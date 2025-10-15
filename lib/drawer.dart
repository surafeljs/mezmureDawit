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
          ListTile(leading: Icon(Icons.home), title: Text('Home')),
          SizedBox(height: 20.0),

          ListTile(leading: Icon(Icons.settings), title: Text('Settings')),
          SizedBox(height: 20.0),

          ListTile(leading: Icon(Icons.info), title: Text('About')),
          SizedBox(height: 20.0),

          ListTile(leading: Icon(Icons.logout), title: Text('Logout')),
        ],
      ),
    );
  }
}
