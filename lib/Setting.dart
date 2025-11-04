import 'package:flutter/material.dart';
import 'package:orthodox/body.dart';

class Setting extends StatefulWidget {
  final VoidCallback axisHorizontalDirections;
  final VoidCallback axisVerticalDirections;

  Setting({
    super.key,
    required this.axisVerticalDirections,
    required this.axisHorizontalDirections,
  });

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  List<String> radio = ['ወደ ጎን ', 'ከላይ ወደታች'];
  String? _selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.deepOrange, centerTitle: true),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: Text('Dark mode', style: TextStyle(fontSize: 25.0)),
                  ),
                ),
              ],
            ),
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
                                        Navigator.pop(context);
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
                          'More apps',
                          style: TextStyle(fontSize: 20.0),
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
