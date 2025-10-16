import 'package:flutter/material.dart';
import 'package:orthodox/drawer.dart';
import 'package:orthodox/popup_menu.dart';

class HomeScreen extends StatefulWidget {
  final bool isThems;
  final ValueChanged<bool> onThemeChanged;

  const HomeScreen({
    super.key,
    required this.isThems,
    required this.onThemeChanged,
  });
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Switch(
              value: widget.isThems,
              onChanged: (value) {
                setState(() {
                  widget.onThemeChanged(value);
                });
              },
            ),
          ),
          PopupMenuButton(
            position: PopupMenuPosition.under,
            onSelected: (result) {
              switch (result) {
                case 'Setting':
                  // print('ggggggg');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MoreVert(),
                    ), // Make sure MoreVert is a valid widget
                  );
                  break;
                case 'Share':
                  // Add share functionality
                  break;
                case 'Rate':
                  // Add rate functionality
                  break;
                case 'More':
                  // Add more apps functionality
                  break;
              }
            },
            menuPadding: EdgeInsets.only(right: 22.0, left: 8.0, top: 8.0),
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 'Setting',
                child: ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Setting'),
                ),
              ),
              PopupMenuItem(
                value: 'Share',
                child: ListTile(
                  leading: Icon(Icons.share),
                  title: Text('Share'),
                ),
              ),
              PopupMenuItem(
                value: 'Rate',
                child: ListTile(
                  leading: Icon(Icons.rate_review),
                  title: Text('Rate us'),
                ),
              ),
              PopupMenuItem(
                value: 'More',
                child: ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('More apps'),
                ),
              ),
            ],
          ),
        ],

        backgroundColor: Colors.deepOrange,
      ),

      drawer: Drawers(),
    );
  }
}
