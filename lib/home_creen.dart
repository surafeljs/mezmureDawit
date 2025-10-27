import 'package:flutter/material.dart';
import 'package:orthodox/Setting.dart';
import 'package:orthodox/body.dart';
import 'package:orthodox/drawer.dart';

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
  String text = '';
  Icon isdark = Icon(Icons.dark_mode);
  bool? abc = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('መዝሙረ ዳዊት'),
        actions: [
          Padding(
            padding: EdgeInsetsGeometry.all(8),

            child: IconButton(
              onPressed: () {
                setState(() {
                  widget.onThemeChanged(!widget.isThems);
                });
              },
              icon: Icon(widget.isThems ? Icons.light_mode : Icons.dark_mode),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Switch(
          //     value: widget.isThems,
          //     onChanged: (value) {
          //       widget.onThemeChanged(value);
          //     },
          //   ),
          // ),
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                useSafeArea: true,

                context: context,
                builder: (context) {
                  return SizedBox(
                    width: double.infinity,
                    height: 400.0,

                    child: Center(child: Text('share app')),
                  );
                },
              );
            },
            icon: Icon(Icons.share),
          ),
          PopupMenuButton(
            onSelected: (value) {
              switch (value) {
                case 'Setting':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Setting()),
                  );
                  break;
                default:
              }
            },
            position: PopupMenuPosition.under,
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
      body: Body(),
    );
  }
}
