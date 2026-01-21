import 'package:flutter/material.dart';
import 'package:orthodox/home_creen.dart';
import 'package:orthodox/main.dart';
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
  List<String> fontType = [
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
  double _fontSlizeSlider = 22;
  @override
  void initState() {
    super.initState();
    _loadFontSize();
  }

  Future<void> _loadFontSize() async {
    final prefs = await SharedPreferences.getInstance();

    // getDouble returns null if key doesn't exist, so fallback to 20
    final savedSize = prefs.getDouble('fontTextSizes') ?? 22.0;

    setState(() {
      _fontSlizeSlider = savedSize;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[400],
        centerTitle: true,
        title: Text(
          'Setting',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 3.0,
            fontSize: 23.0,
          ),
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, top: 50.0),
                      child: SizedBox(
                        height: 50.0,
                        child: GestureDetector(
                          onTap: () {
                            showDialog(
                              animationStyle: AnimationStyle(
                                duration: Duration(milliseconds: 300),
                                curve: Curves.bounceOut,
                                reverseCurve: Curves.bounceIn,
                              ),
                              useSafeArea: true,

                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text('የገጽ አቀማመጥ'),

                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      ListTile(
                                        title: InkWell(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(25),
                                          ),
                                          onTap:
                                              widget.axisHorizontalDirections,

                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'ወደ ጎን ',
                                              style: TextStyle(fontSize: 18.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                      ListTile(
                                        title: InkWell(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(25),
                                          ),
                                          onTap: widget.axisVerticalDirections,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'ከላይ ወደታች ',
                                              style: TextStyle(fontSize: 18.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                  actions: [
                                    GestureDetector(
                                      child: Text(
                                        'Ok',
                                        style: TextStyle(fontSize: 18.0),
                                      ),

                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Orthodox(),
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child: Text(
                            'የገጽ አቀማመጥ',
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0, top: 5.0),
                          child: SizedBox(
                            height: 70.0,
                            child: DropdownButton(
                              hint: Text('Font Type'),
                              value: _selectedFont,

                              items: fontType
                                  .map(
                                    (f) => DropdownMenuItem<String>(
                                      value: f,
                                      child: Text(f),
                                    ),
                                  )
                                  .toList(),
                              onChanged: (value) {
                                setState(() {
                                  _selectedFont = value;
                                });

                                if (value != null) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => HomeScreen(
                                        drawerIndex: 0,
                                        isThems: true,
                                        fontType: value,

                                        onThemeChanged: (v) {},
                                        indexs: null,
                                        fontSize: null,
                                      ),
                                    ),
                                  );
                                }
                              },
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 30.0,
                                top: 5.0,
                                right: 5.0,
                              ),
                              child: SizedBox(
                                height: 70.0,
                                child: Slider(
                                  value: _fontSlizeSlider,
                                  min: 10.0,
                                  max: 60.0,
                                  divisions: 50,
                                  label: _fontSlizeSlider.toStringAsFixed(0),
                                  onChanged: (value) {
                                    setState(() {
                                      _fontSlizeSlider = value;
                                    });
                                  },
                                ),
                              ),
                            ),
                            OutlinedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomeScreen(
                                      drawerIndex: 0,
                                      isThems: true,
                                      fontType: null,
                                      onThemeChanged: (context) {},
                                      indexs: 0,
                                      fontSize: _fontSlizeSlider,
                                    ),
                                  ),
                                );
                              },
                              child: Text(
                                'Font',
                                style: TextStyle(letterSpacing: 6.0),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 19.0, top: 5.0),
                      child: SizedBox(
                        height: 50.0,
                        child: TextButton(
                          onPressed: () async {
                            await SharePlus.instance.share(
                              ShareParams(text: "Thanks for sharing ✅"),
                            );
                          },
                          child: Text(
                            'Share',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: SizedBox(
                        height: 50.0,

                        child: Text(
                          'Rate us',
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: SizedBox(
                        height: 50.0,
                        child: Text(
                          'More apps ',
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: SizedBox(
                        height: 50.0,
                        child: GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AboutDialog(
                                  applicationIcon: FlutterLogo(),
                                  applicationLegalese: 'Legalese',
                                  applicationName: 'Mezmure Dawit',
                                  applicationVersion: 'v1.0.0',
                                  children: [
                                    SizedBox(height: 10),
                                    Center(child: Text('Mezmure Dawit App.')),
                                    SizedBox(height: 10),

                                    Center(
                                      child: Text(
                                        'Made with ❤️ using Flutter.',
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child: Text(
                            'More Info ',
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: SizedBox(
                        height: 50.0,
                        child: GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              isScrollControlled: true,
                              context: context,
                              builder: (context) {
                                return DraggableScrollableSheet(
                                  expand: false,

                                  initialChildSize: 0.6,
                                  minChildSize: 0.3,
                                  maxChildSize: 0.9,
                                  builder: (context, scrollController) {
                                    return SingleChildScrollView(
                                      controller: scrollController,
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),

                                        child: Column(
                                          children: [
                                            CircleAvatar(
                                              radius: 90,
                                              backgroundImage: AssetImage(
                                                'assets/img/splash/Mezmure.png',
                                              ),
                                              child: Align(
                                                alignment:
                                                    AlignmentGeometry.center,
                                              ),
                                            ),

                                            SizedBox(height: 20),
                                            Text(
                                              "Developer: Surafel D.",
                                              style: TextStyle(fontSize: 20.0),
                                            ),
                                            Text(
                                              "Phone: 0901158062",
                                              style: TextStyle(fontSize: 16),
                                            ),
                                            Text(
                                              'Email: Surafel.node@gmail.com',
                                              style: TextStyle(fontSize: 14.0),
                                            ),
                                            Text(
                                              'Special Tnx: Rediet Baye',
                                              style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.red,
                                              ),
                                            ),
                                            Text("${DateTime.now().year}"),

                                            SizedBox(height: 20),

                                            Text(
                                              "ይህ አፕ በአማርኛ ቋንቋ የተጻፈ የመዝሙር ዳዊት መዝሙሮችን በሙሉ የያዘ ነው።\nበእያንዳንዱ መዝሙር የተሰጠው ጥራት እና ቅርጸት በተለይ ለመንፈሳዊ ጥምረት የተዘጋጀ ነው።\nየመዝሙሩን ቃላት በቀላሉ መንበብ እና ማስታወስ ይቻላል።\nተጠቃሚዎች የተወደዱትን መዝሙሮች በፍጥነት ማስቀመጥ እና በየምድቡ ማደራጀት ይችላሉ።\nአፕው ከፍተኛ ጥራት ያለው መዝሙር ትርጉም ይሰጣል፣ ስለዚህ ማንበብ በቀላሉ እና በተስማሚ ሁኔታ ይሆናል።\nይህ አፕ የመዝሙር ዳዊት ትምህርትን እና መንፈሳዊ ልማድን ለአማርኛ ተከታዮች ቀላል ለማስተዋወቅ የተዘጋጀ ነው።\nእንዲሁም ስም, ምድብ, ወይም መዝሙር ቁጥር በመፈለጊያ ቀላል እና ፈጣን መሆኑን ይሰጣል።",
                                              style: TextStyle(fontSize: 16),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            );
                          },

                          child: Text(
                            'About',
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
