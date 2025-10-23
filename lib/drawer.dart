import 'package:flutter/material.dart';

class Drawers extends StatefulWidget {
  const Drawers({super.key});

  @override
  State<Drawers> createState() => _DrawersState();
}

class _DrawersState extends State<Drawers> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/134009274249421277.jpg'),

                fit: BoxFit.cover,
                // Makes the image fill the header
              ),
            ),
            child: Container(), // You can add overlay widgets here if needed
          ),
          SizedBox(height: 20.0),
          ListTile(
            leading: Icon(Icons.radio_button_checked),
            title: Text('መዝሙር 1'),
            onTap: () {},
          ),
          SizedBox(height: 20.0),

          ListTile(
            leading: Icon(Icons.radio_button_checked),
            title: Text('መዝሙር 2'),
          ),
          SizedBox(height: 20.0),

          ListTile(
            leading: Icon(Icons.radio_button_checked),
            title: Text('መዝሙር 3'),
          ),
          SizedBox(height: 20.0),
          ListTile(
            leading: Icon(Icons.radio_button_checked),
            title: Text('መዝሙር 4'),
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
    );
  }
}

//
