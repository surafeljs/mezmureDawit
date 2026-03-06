import 'package:flutter/material.dart';
import 'package:orthodox/home_creen.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Setting extends StatefulWidget {
  final Axis bodyBools;
  final VoidCallback axisHorizontalDirections;
  final VoidCallback axisVerticalDirections;

  const Setting({
    super.key,
    required this.bodyBools,
    required this.axisVerticalDirections,
    required this.axisHorizontalDirections,
  });

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  final List<String> fontType = [
    'EthiopicLessan',
    'EthiopicSadiss',
    'FreeSerif',
    'Wookianos',
    'Washrab',
    'WaldbaFantuwua',
    'VGUnicode',
    'Tint',
    'Tayitu',
    'NotoSansEthiopic',
    'Meaza',
    'Hiwua',
    'GeezHandwriting',
    'GeezDigital',
    'Geez-Pixels',
    'Geez-Manuscript',
    'AbyssinicaSIL',
    'Brana',
    'Desta',
    'Abay',
  ];

  String? _selectedFont;
  double _fontSizeSlider = 15;

  @override
  void initState() {
    super.initState();
    _loadFontSize();
  }

  Future<void> _loadFontSize() async {
    final prefs = await SharedPreferences.getInstance();
    final savedSize = prefs.getDouble('fontTextSizes') ?? 15.0;

    setState(() {
      _fontSizeSlider = savedSize;
    });
  }

  Future<void> _saveFontSize(double size) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setDouble('fontTextSizes', size);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[400],
        centerTitle: true,
        title: const Text(
          'Setting',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 3,
            fontSize: 23,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            /// Page Direction
            ListTile(
              title: const Text('የገጽ አቀማመጥ', style: TextStyle(fontSize: 20)),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('የገጽ አቀማመጥ'),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            title: const Text('ወደ ጎን'),
                            onTap: widget.axisHorizontalDirections,
                          ),
                          ListTile(
                            title: const Text('ከላይ ወደታች'),
                            onTap: widget.axisVerticalDirections,
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),

            const SizedBox(height: 20),

            /// Font Dropdown
            SizedBox(
              child: DropdownButton<String>(
                isExpanded: true,

                value: _selectedFont,
                hint: const Text('Select Font Type'),
                items: fontType
                    .map((f) => DropdownMenuItem(value: f, child: Text(f)))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedFont = value;
                  });

                  if (value != null) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => HomeScreen(
                          drawerIndex: 0,
                          isThems: true,
                          fontType: value,
                          onThemeChanged: (_) {},
                          indexs: null,
                          fontSize: null,
                        ),
                      ),
                    );
                  }
                },
              ),
            ),

            const SizedBox(height: 30),

            /// Font Size Slider
            const Text(
              "Font Size",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            Slider(
              value: _fontSizeSlider,
              min: 10,
              max: 60,
              divisions: 50,
              label: _fontSizeSlider.toStringAsFixed(0),
              onChanged: (value) {
                setState(() {
                  _fontSizeSlider = value;
                });
              },
              onChangeEnd: (value) {
                _saveFontSize(value);
              },
            ),

            OutlinedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  Colors.amberAccent.withValues(alpha: 0.6),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => HomeScreen(
                      drawerIndex: 0,
                      isThems: true,
                      fontType: null,
                      onThemeChanged: (_) {},
                      indexs: 0,
                      fontSize: _fontSizeSlider,
                    ),
                  ),
                );
              },
              child: Center(
                child: const Text(
                  style: TextStyle(fontWeight: FontWeight.bold),
                  'Apply Font',
                ),
              ),
            ),

            const SizedBox(height: 30),

            /// Share
            // ListTile(
            //   title: const Text('Share', style: TextStyle(fontSize: 20)),
            //   onTap: () async {

            //     await Share.share("Thanks for sharing ✅");
            //   },
            // ),

            /// Rate
            const ListTile(
              title: Text('Rate us', style: TextStyle(fontSize: 20)),
            ),

            /// More Apps
            const ListTile(
              title: Text('More apps', style: TextStyle(fontSize: 20)),
            ),

            /// About Dialog
            ListTile(
              title: const Text('About', style: TextStyle(fontSize: 20)),
              onTap: () {
                showAboutDialog(
                  context: context,
                  applicationName: "Mezmure Dawit",
                  applicationVersion: "v1.0.0",
                  applicationIcon: const FlutterLogo(),
                );
              },
            ),

            const SizedBox(height: 40),

            Center(
              child: Text(
                "© ${DateTime.now().year} Surafel D.",
                style: const TextStyle(fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
