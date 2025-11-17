import 'package:flutter/material.dart';

import 'package:orthodox/home_creen.dart';
import 'package:orthodox/main.dart';

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
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text('የገጽ አቀማመጥ'),

                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      ListTile(
                                        title: GestureDetector(
                                          onTap:
                                              widget.axisHorizontalDirections,

                                          child: Text('ወደ ጎን '),
                                        ),
                                      ),
                                      ListTile(
                                        title: GestureDetector(
                                          onTap: widget.axisVerticalDirections,
                                          child: Text('ከላይ ወደታች '),
                                        ),
                                      ),
                                    ],
                                  ),

                                  actions: [
                                    GestureDetector(
                                      child: Text('Ok'),

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
                                    isThems: true,
                                    fontType: value,

                                    onThemeChanged: (v) {},
                                  ),
                                ),
                              );
                            }
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, top: 5.0),
                      child: SizedBox(
                        height: 50.0,
                        child: Text('Share', style: TextStyle(fontSize: 20.0)),
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
                                return AlertDialog(
                                  content: Column(
                                    spacing: 0.0,

                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ListTile(
                                        title: Text('Delevopd by:Surafel D.'),
                                        subtitle: Text('Phone : 0901158062'),
                                      ),

                                      ListTile(
                                        title: Text('Gmail'),
                                        subtitle: Text(
                                          'Surafel.node@gmail.com',
                                        ),
                                      ),
                                    ],
                                  ),

                                  actions: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text('Ok'),
                                    ),
                                  ],
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
