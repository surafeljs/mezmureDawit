import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:orthodox/audio_playlist.dart';
import 'package:orthodox/setting.dart';
import 'package:orthodox/body.dart';
import 'package:orthodox/drawer.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomeScreen extends StatefulWidget {
  final int drawerIndex;
  final bool isThems;
  final String? fontType;
  final ValueChanged<bool> onThemeChanged;
  final int? indexs;
  //fontSizes
  final double? fontSize;

  const HomeScreen({
    super.key,
    required this.drawerIndex,

    required this.isThems,
    required this.fontType,

    required this.onThemeChanged,
    required this.indexs,
    required this.fontSize,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Axis direction = Axis.vertical;
  String dataFromChild = "No data yet";
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

  int countre = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(style: TextStyle(fontWeight: FontWeight.bold), 'መዝሙረ ዳዊት'),

        actions: [
          Padding(padding: EdgeInsetsGeometry.all(8)),
          Padding(
            padding: EdgeInsetsGeometry.all(8),

            child: IconButton(
              onPressed: () {
                setState(() {
                  widget.onThemeChanged(!widget.isThems);
                  countre++;
                });
              },
              icon: AnimatedSwitcher(
                duration: Duration(milliseconds: 300),
                transitionBuilder: (child, animation) {
                  return FadeTransition(
                    opacity: animation,
                    child: ScaleTransition(scale: animation, child: child),
                  );
                },
                child: Icon(
                  key: ValueKey<int>(countre),
                  widget.isThems ? Icons.light_mode : Icons.dark_mode,
                ),
              ),
            ),
          ),

          IconButton(
            onPressed: () async {
              await SharePlus.instance.share(
                ShareParams(
                  text: "Thanks for sharing ✅ ",

                  // uri: Uri.parse(
                  //   'https://play.google.com/store/apps/details?id=com.example.yourapp',
                  // ),
                ),
              );
            },
            icon: Icon(Icons.share),
          ),

          PopupMenuButton(
            onSelected: (value) async {
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
                case 'Share':

                  // Directly call async code
                  await SharePlus.instance.share(
                    ShareParams(text: "Thanks for sharing ✅"),
                  );
                  break;

                case 'Rate':
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,

                          allowHalfRating: true,
                          itemCount: 5,

                          itemBuilder: (context, index) {
                            return SingleChildScrollView(
                              child: Column(
                                children: [
                                  ListTile(
                                    title: Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          onRatingUpdate: (update) {},
                        ),
                      );
                    },
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
        backgroundColor: Colors.orange[400],
      ),
      drawer: Drawers(),
      body: Body(
        drawerIndex: widget.drawerIndex,
        bodyBool: direction,
        fontTypes: widget.fontType,
        axisVerticalDirection: verticalDirection,
        axisHorizontalDirection: horizontalDirection,
        fontSizes: widget.fontSize,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            context: context,
            builder: (context) {
              return DraggableScrollableSheet(
                initialChildSize: 0.5,
                minChildSize: 0.3,
                maxChildSize: 0.9,

                expand: false,
                builder: (context, scrollController) {
                  return ClipRRect(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(25),
                    ),
                    child: Container(
                      color: Colors.white,
                      child: Playlist(scrollController: scrollController),
                    ),
                  );
                },
              );
            },
          );
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
