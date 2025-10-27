import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool switchButton = false;
  Icon isdark = Icon(Icons.dark_mode);
  bool? abc = false;
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
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        bool nullCheck = abc ?? false;
                        abc = !nullCheck;

                        if (nullCheck) {
                          isdark = Icon(Icons.dark_mode);
                        } else {
                          isdark = Icon(Icons.light_mode);
                        }
                      });
                      print(abc);
                    },
                    icon: isdark,
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
