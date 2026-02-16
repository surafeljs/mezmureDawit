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
                    title: Text('መዝሙር 61'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 62'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 63'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 64'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 65'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 66'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 67'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 68'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 69'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 70'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 72'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 73'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 74'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 75'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 76'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 76'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 77'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 78'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 79'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 80'),
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
                    title: Text('መዝሙር 81'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 82'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 83'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 84'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 85'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 66'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 87'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 88'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 89'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 90'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 91'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 92'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 93'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 94'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 95'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 96'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 97'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 98'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 99'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 100'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 101'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 102'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 103'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 104'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 105'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 106'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 107'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 108'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 109'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 110'),
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
                    title: Text('መዝሙር 111'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 112'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 113'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 114'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 115'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 116'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 117'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 118'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 119'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 120'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 121'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 122'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 123'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 124'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 125'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 126'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 127'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 128'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 129'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 130'),
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
                    title: Text('መዝሙር 131'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 132'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 133'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 134'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 135'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 136'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 137'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 138'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 139'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 140'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 141'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 142'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 143'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 144'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 145'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 146'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 147'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 148'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 149'),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 150'),
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
                  Text("© 2026 መዝሙረ ዳዊት"),
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
