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

                  // For ListTile 3 and 4 (already have onTap)
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

                  // For ListTiles 5-30, add onTap functions
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 5'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 5,
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
                    title: Text('መዝሙር 6'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 6,
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
                    title: Text('መዝሙር 7'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 7,
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
                    title: Text('መዝሙር 8'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 8,
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
                    title: Text('መዝሙር 9'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 9,
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
                    title: Text('መዝሙር 10'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 10,
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
                    title: Text('መዝሙር 11'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 11,
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
                    title: Text('መዝሙር 12'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 12,
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
                    title: Text('መዝሙር 13'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 13,
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
                    title: Text('መዝሙር 14'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 14,
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
                    title: Text('መዝሙር 15'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 15,
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
                    title: Text('መዝሙር 16'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 16,
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
                    title: Text('መዝሙር 17'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 17,
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
                    title: Text('መዝሙር 18'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 18,
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
                    title: Text('መዝሙር 19'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 19,
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
                    title: Text('መዝሙር 20'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 20,
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
                    title: Text('መዝሙር 21'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 21,
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
                    title: Text('መዝሙር 22'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 22,
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
                    title: Text('መዝሙር 23'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 23,
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
                    title: Text('መዝሙር 24'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 24,
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
                    title: Text('መዝሙር 25'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 25,
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
                    title: Text('መዝሙር 26'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 26,
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
                    title: Text('መዝሙር 27'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 27,
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
                    title: Text('መዝሙር 28'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 28,
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
                    title: Text('መዝሙር 29'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 29,
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
                    title: Text('መዝሙር 30'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 30,
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
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 31,
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
                    title: Text('መዝሙር 32'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 32,
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
                    title: Text('መዝሙር 33'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 33,
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
                    title: Text('መዝሙር 34'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 34,
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
                    title: Text('መዝሙር 35'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 35,
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
                    title: Text('መዝሙር 36'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 36,
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
                    title: Text('መዝሙር 37'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 37,
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
                    title: Text('መዝሙር 38'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 38,
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
                    title: Text('መዝሙር 39'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 39,
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
                    title: Text('መዝሙር 40'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 40,
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
                    title: Text('መዝሙር 41'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 41,
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
                    title: Text('መዝሙር 42'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 42,
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
                    title: Text('መዝሙር 43'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 43,
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
                    title: Text('መዝሙር 44'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 44,
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
                    title: Text('መዝሙር 45'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 45,
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
                    title: Text('መዝሙር 46'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 46,
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
                    title: Text('መዝሙር 47'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 47,
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
                    title: Text('መዝሙር 48'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 48,
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
                    title: Text('መዝሙር 49'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 49,
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
                    title: Text('መዝሙር 50'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 50,
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
                    title: Text('መዝሙር 51'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 51,
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
                    title: Text('መዝሙር 52'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 52,
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
                    title: Text('መዝሙር 53'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 53,
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
                    title: Text('መዝሙር 54'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 54,
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
                    title: Text('መዝሙር 55'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 55,
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
                    title: Text('መዝሙር 56'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 56,
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
                    title: Text('መዝሙር 57'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 57,
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
                    title: Text('መዝሙር 58'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 58,
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
                    title: Text('መዝሙር 59'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 59,
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
                    title: Text('መዝሙር 60'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 60,
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
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 61,
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
                    title: Text('መዝሙር 62'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 62,
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
                    title: Text('መዝሙር 63'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 63,
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
                    title: Text('መዝሙር 64'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 64,
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
                    title: Text('መዝሙር 65'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 65,
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
                    title: Text('መዝሙር 66'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 66,
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
                    title: Text('መዝሙር 67'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 67,
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
                    title: Text('መዝሙር 68'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 68,
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
                    title: Text('መዝሙር 69'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 69,
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
                    title: Text('መዝሙር 70'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 70,
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

                  // Added missing hymn 71
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 71'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 71,
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
                    title: Text('መዝሙር 72'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 72,
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
                    title: Text('መዝሙር 73'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 73,
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
                    title: Text('መዝሙር 74'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 74,
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
                    title: Text('መዝሙር 75'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 75,
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

                  // Fixed: Removed duplicate 76, now only one
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 76'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 76,
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
                    title: Text('መዝሙር 77'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 77,
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
                    title: Text('መዝሙር 78'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 78,
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
                    title: Text('መዝሙር 79'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 79,
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
                    title: Text('መዝሙር 80'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 80,
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
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 81,
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
                    title: Text('መዝሙር 82'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 82,
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
                    title: Text('መዝሙር 83'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 83,
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
                    title: Text('መዝሙር 84'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 84,
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
                    title: Text('መዝሙር 85'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 85,
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

                  // Fixed: Changed from 66 to 86
                  ListTile(
                    leading: Icon(Icons.radio_button_checked),
                    title: Text('መዝሙር 86'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 86,
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
                    title: Text('መዝሙር 87'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 87,
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
                    title: Text('መዝሙር 88'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 88,
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
                    title: Text('መዝሙር 89'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 89,
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
                    title: Text('መዝሙር 90'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 90,
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
                    title: Text('መዝሙር 91'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 91,
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
                    title: Text('መዝሙር 92'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 92,
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
                    title: Text('መዝሙር 93'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 93,
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
                    title: Text('መዝሙር 94'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 94,
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
                    title: Text('መዝሙር 95'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 95,
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
                    title: Text('መዝሙር 96'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 96,
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
                    title: Text('መዝሙር 97'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 97,
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
                    title: Text('መዝሙር 98'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 98,
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
                    title: Text('መዝሙር 99'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 99,
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
                    title: Text('መዝሙር 100'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 100,
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
                    title: Text('መዝሙር 101'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 101,
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
                    title: Text('መዝሙር 102'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 102,
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
                    title: Text('መዝሙር 103'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 103,
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
                    title: Text('መዝሙር 104'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 104,
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
                    title: Text('መዝሙር 105'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 105,
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
                    title: Text('መዝሙር 106'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 106,
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
                    title: Text('መዝሙር 107'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 107,
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
                    title: Text('መዝሙር 108'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 108,
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
                    title: Text('መዝሙር 109'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 109,
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
                    title: Text('መዝሙር 110'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 110,
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
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 111,
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
                    title: Text('መዝሙር 112'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 112,
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
                    title: Text('መዝሙር 113'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 113,
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
                    title: Text('መዝሙር 114'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 114,
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
                    title: Text('መዝሙር 115'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 115,
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
                    title: Text('መዝሙር 116'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 116,
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
                    title: Text('መዝሙር 117'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 117,
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
                    title: Text('መዝሙር 118'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 118,
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
                    title: Text('መዝሙር 119'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 119,
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
                    title: Text('መዝሙር 120'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 120,
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
                    title: Text('መዝሙር 121'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 121,
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
                    title: Text('መዝሙር 122'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 122,
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
                    title: Text('መዝሙር 123'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 123,
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
                    title: Text('መዝሙር 124'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 124,
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
                    title: Text('መዝሙር 125'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 125,
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
                    title: Text('መዝሙር 126'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 126,
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
                    title: Text('መዝሙር 127'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 127,
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
                    title: Text('መዝሙር 128'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 128,
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
                    title: Text('መዝሙር 129'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 129,
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
                    title: Text('መዝሙር 130'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 130,
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
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 131,
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
                    title: Text('መዝሙር 132'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 132,
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
                    title: Text('መዝሙር 133'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 133,
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
                    title: Text('መዝሙር 134'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 134,
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
                    title: Text('መዝሙር 135'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 135,
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
                    title: Text('መዝሙር 136'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 136,
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
                    title: Text('መዝሙር 137'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 137,
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
                    title: Text('መዝሙር 138'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 138,
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
                    title: Text('መዝሙር 139'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 139,
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
                    title: Text('መዝሙር 140'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 140,
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
                    title: Text('መዝሙር 141'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 141,
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
                    title: Text('መዝሙር 142'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 142,
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
                    title: Text('መዝሙር 143'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 143,
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
                    title: Text('መዝሙር 144'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 144,
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
                    title: Text('መዝሙር 145'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 145,
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
                    title: Text('መዝሙር 146'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 146,
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
                    title: Text('መዝሙር 147'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 147,
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
                    title: Text('መዝሙር 148'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 148,
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
                    title: Text('መዝሙር 149'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 149,
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
                    title: Text('መዝሙር 150'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            drawerIndex: 150,
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
