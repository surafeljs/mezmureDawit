import 'package:flutter/material.dart';
import 'package:orthodox/Setting.dart';

class MoreVert extends StatefulWidget {
  @override
  State<MoreVert> createState() => _MoreVertState();
}

class _MoreVertState extends State<MoreVert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,

        actions: [
          PopupMenuButton(
            position: PopupMenuPosition.under,
            onSelected: (result) {
              switch (result) {
                case 'Setting':
                  // print('ggggggg');
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => Setting(),
                  //   ), // Make sure MoreVert is a valid widget
                  // );
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
      ),
    );
  }
}
