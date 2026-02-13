import 'package:flutter/material.dart';
import 'package:orthodox/home_creen.dart';

class Drawers extends StatefulWidget {
  @override
  State<Drawers> createState() => _DrawersState();
}

class _DrawersState extends State<Drawers> {
  int drawerIndex = 0;
  final initialexpanded = true;
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
            initiallyExpanded: initialexpanded,

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
                  SizedBox(height: 20.0),

                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 10'),
                  ),
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

                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 21'),
                  ),
                  SizedBox(height: 20.0),

                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 22'),
                  ),
                  SizedBox(height: 20.0),

                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 23'),
                  ),
                  SizedBox(height: 20.0),

                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 24'),
                  ),
                  SizedBox(height: 20.0),

                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 25'),
                  ),
                  SizedBox(height: 20.0),

                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 26'),
                  ),
                  SizedBox(height: 20.0),

                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 27'),
                  ),
                  SizedBox(height: 20.0),

                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 28'),
                  ),
                  SizedBox(height: 20.0),

                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 29'),
                  ),
                  SizedBox(height: 20.0),

                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 30'),
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
                    title: Text('መዝሙር 31'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 32'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 33'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 34'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 35'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 36'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 37'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 38'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 39'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 40'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 41'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 42'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 43'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 44'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 45'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 46'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 47'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 48'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 49'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 50'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 51'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 52'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 53'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 54'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 55'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 56'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 57'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 58'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 59'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 60'),
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

          Divider(),
          SizedBox(height: 120),

          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Version 1.0.0"),
                  SizedBox(height: 6),
                  Text("© 2026 My App"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//
