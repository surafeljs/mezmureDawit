import 'package:flutter/material.dart';
import 'package:orthodox/Setting.dart';
import 'package:orthodox/body.dart';
import 'package:orthodox/drawer.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  Axis direction = Axis.vertical;

  String text = '';
  Icon isdark = Icon(Icons.dark_mode);
  bool? abc = false;
  @override
  void initState() {
    getDate();

    super.initState();
  }

  Future<void> getDate() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String? savedDirection = prefs.getString('direction');

      if (savedDirection != null) {
        setState(() {
          if (savedDirection == 'Axis.horizontal') {
            direction = Axis.horizontal;
          } else {
            direction = Axis.vertical;
          }
        });
      }
    } catch (e) {
      print('Error loading direction: $e');
    }
  }

  Future<void> setDate(Axis newDirection) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('direction', newDirection.toString());
    } catch (e) {
      print('Error saving direction: $e');
    }
  }

  void horizontalDirection() {
    setState(() {
      direction = Axis.horizontal;
    });
    setDate(Axis.horizontal);
  }

  void verticalDirection() {
    setState(() {
      direction = Axis.vertical;
    });
    setDate(Axis.vertical);
  }

  @override
  Widget build(BuildContext context) {
    print(widget.indexs);
    return Scaffold(
      appBar: AppBar(
        title: Text(style: TextStyle(fontWeight: FontWeight.bold), 'መዝሙረ ዳዊት'),
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
            onPressed: () async {
              await SharePlus.instance.share(ShareParams(text: 'shardgge'));
            },
            icon: Icon(Icons.share),
          ),

          PopupMenuButton(
            onSelected: (value) {
              switch (value) {
                case 'Setting':
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Setting(
                        bodyBools: direction,
                        axisVerticalDirections: verticalDirection,
                        axisHorizontalDirections: horizontalDirection,
                      ),
                    ),
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
        backgroundColor: Colors.orange,
      ),
      drawer: Drawers(),
      body: Body(
        bodyBool: direction,
        axisHorizontalDirection: horizontalDirection,
        axisVerticalDirection: verticalDirection,
      ),
    );
  }
}
