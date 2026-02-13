import 'package:flutter/material.dart';
import 'package:orthodox/home_creen.dart';

class Drawers extends StatefulWidget {
  @override
  State<Drawers> createState() => _DrawersState();
}

class _DrawersState extends State<Drawers> {
  int drawerIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img/drawerHeaderCover.jpg'),
                repeat: ImageRepeat.noRepeat,

                fit: BoxFit.cover,
              ),
            ),
            child: Container(), // You can add overlay widgets here if needed
          ),
          ExpansionTile(
            title: Text('ሰኞ '),
            leading: Icon(Icons.import_contacts_outlined),

            children: [
              Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 1'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 1,
                            isThems: false,
                            fontType: null,
                            onThemeChanged: (context) {},
                            indexs: null,
                            fontSize: null,
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 20.0),

                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 2'),

                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 2,
                            isThems: false,
                            fontType: null,
                            onThemeChanged: (context) {},
                            indexs: null,
                            fontSize: null,
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 20.0),

                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 3'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 3,
                            isThems: false,
                            fontType: null,
                            onThemeChanged: (context) {},
                            indexs: null,

                            fontSize: null,
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 4'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 4,
                            isThems: true,
                            fontType: null,
                            onThemeChanged: (context) {},
                            indexs: null,
                            fontSize: null,
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 5'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 6'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 7'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 8'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 9'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 10'),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20.0),
          ExpansionTile(
            title: Text('ማክሰኞ'),
            leading: Icon(Icons.import_contacts_outlined),

            children: [
              Column(
                children: [
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 11'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 12'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 13'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 14'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 15'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 16'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 17'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 18'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 19'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 20'),
                  ),
                  SizedBox(height: 20.0),
                ],
              ),
            ],
          ),
          SizedBox(height: 20.0),
          ExpansionTile(
            title: Text('ረቡዕ'),
            leading: Icon(Icons.import_contacts_outlined),

            children: [
              Column(
                children: [
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 11'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 12'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 13'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 14'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 15'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 16'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 17'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 18'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 19'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 20'),
                  ),
                  SizedBox(height: 20.0),
                ],
              ),
            ],
          ),
          SizedBox(height: 20.0),
          ExpansionTile(
            title: Text('ሐሙስ'),
            leading: Icon(Icons.import_contacts_outlined),

            children: [
              Column(
                children: [
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 11'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 12'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 13'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 14'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 15'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 16'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 17'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 18'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 19'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 20'),
                  ),
                  SizedBox(height: 20.0),
                ],
              ),
            ],
          ),
          SizedBox(height: 20.0),
          ExpansionTile(
            title: Text('ዓርብ'),
            leading: Icon(Icons.import_contacts_outlined),

            children: [
              Column(
                children: [
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 11'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 12'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 13'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 14'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 15'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 16'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 17'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 18'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 19'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 20'),
                  ),
                  SizedBox(height: 20.0),
                ],
              ),
            ],
          ),
          SizedBox(height: 20.0),
          ExpansionTile(
            title: Text('ቅዳሜ'),
            leading: Icon(Icons.import_contacts_outlined),

            children: [
              Column(
                children: [
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 11'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 12'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 13'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 14'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 15'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 16'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 17'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 18'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 19'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 20'),
                  ),
                  SizedBox(height: 20.0),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//
