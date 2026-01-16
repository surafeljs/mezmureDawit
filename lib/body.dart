import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:just_audio/just_audio.dart';
import 'package:flutter/services.dart';
import 'data.dart';

class Body extends StatefulWidget {
  final int drawerIndex;
  final Axis bodyBool;
  final String? fontTypes;
  final VoidCallback axisHorizontalDirection;
  final VoidCallback axisVerticalDirection;
  final double? fontSizes;

  const Body({
    super.key,
    required this.drawerIndex,
    required this.bodyBool,
    required this.fontTypes,
    required this.axisVerticalDirection,
    required this.axisHorizontalDirection,
    required this.fontSizes,
  });

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late final ScrollController _scrollController;
  int bodyIndex = 0;
  List<Data> mezmure = [];

  String? displayFont;
  double? displayFontSize;
  @override
  void initState() {
    super.initState();
    bodyIndex = widget.drawerIndex;
    _scrollController = ScrollController()..addListener(_onScroll);

    _loadData();
    _initPrefs();
    _loadFontSize();
  }

  Future<List<Data>> loadMezmureDawit() async {
    final jsonString = await rootBundle.loadString('assets/data/data.json');
    final List<dynamic> jsonList = jsonDecode(jsonString);
    return jsonList.map((e) => Data.fromJson(e)).toList();
  }

  void _onScroll() {
    if (!_scrollController.hasClients) return;
    const double itemHeight = 250;
    final int index = (_scrollController.offset / itemHeight).floor();

    if (index != bodyIndex && index >= 0 && index < mezmure.length) {
      setState(() {
        bodyIndex = index;
      });
    }
  }

  Future<void> _loadData() async {
    final data = await loadMezmureDawit();
    if (!mounted) return;
    setState(() {
      mezmure = data;
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.drawerIndex >= 0 && widget.drawerIndex < mezmure.length) {
        const double itemHeight = 250.0;
        _scrollController.jumpTo(widget.drawerIndex * itemHeight);
        setState(() {
          bodyIndex = widget.drawerIndex;
        });
      }
    });
  }

  Future<void> _initPrefs() async {
    final prefs = await SharedPreferences.getInstance();

    if (widget.fontTypes != null && widget.fontTypes!.isNotEmpty) {
      await prefs.setString('font_keys', widget.fontTypes!);
    }

    final storedFont = prefs.getString('font_keys') ?? '';
    setState(() {
      displayFont = storedFont.isNotEmpty ? storedFont : 'Roboto';
    });
  }

  Future<void> _loadFontSize() async {
    final prefs = await SharedPreferences.getInstance();

    if (widget.fontSizes != null) {
      await prefs.setDouble('fontTextSizes', widget.fontSizes!);
    }

    final storedSize = prefs.getDouble('fontTextSizes') ?? 20;
    setState(() {
      displayFontSize = storedSize;
    });
  }

  List<TextSpan> _highlightEgziabher(String text) {
    const keyword = 'እግዚአብሔ';
    final parts = text.split(keyword);

    return [
      for (int i = 0; i < parts.length; i++) ...[
        TextSpan(text: parts[i]),
        if (i != parts.length - 1)
          TextSpan(
            text: keyword,
            style: const TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
      ],
    ];
  }

  bool visiblity = false;
  AlignmentGeometry _bottomleft = Alignment.bottomLeft;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: _scrollController,
      itemCount: mezmure.length,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            Container(
              padding: const EdgeInsets.only(
                top: 5.0,
                right: 20.0,
                bottom: 10.0,
              ),
              alignment: Alignment.bottomRight,
              child: Text(
                mezmure[index].chapter,
                style: TextStyle(
                  fontSize: 26.0,

                  fontWeight: FontWeight.bold,
                  wordSpacing: 10,
                  fontFamily: displayFont ?? 'EthiopicLessan',
                ),
              ),
            ),
            const Divider(
              indent: 100.0,
              endIndent: 10.0,
              color: Colors.deepOrange,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: displayFontSize,
                    wordSpacing: 2,
                    fontFamily: displayFont ?? 'EthiopicLessan',
                    color: Colors.brown,
                  ),
                  children: _highlightEgziabher(mezmure[index].text),
                ),
              ),
            ),

            AnimatedAlign(
              duration: Duration(milliseconds: 500),
              alignment: _bottomleft,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    visiblity = !visiblity;
                    _bottomleft = visiblity
                        ? Alignment.center
                        : Alignment.bottomLeft;
                  });
                },
                child: Icon(
                  Icons.music_note,
                  size: 35.0,
                  color: Colors.deepOrange,
                ),
              ),
            ),

            AnimatedOpacity(
              duration: Duration(seconds: 1),
              opacity: visiblity ? 1.0 : 0.0,

              child: Visibility(
                visible: visiblity,

                child: InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return DraggableScrollableSheet(
                          expand: false,

                          initialChildSize: 0.6,
                          minChildSize: 0.3,
                          maxChildSize: 0.7,
                          builder: (context, ScrollController scrollController) {
                            return SingleChildScrollView(
                              controller: scrollController,

                              child: Column(
                                children: [
                                  SizedBox(
                                    width: double.infinity,
                                    child: Padding(
                                      padding: const EdgeInsets.all(40.0),
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            16,
                                          ), // roundness
                                        ),
                                        elevation: 6,

                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(
                                                8.0,
                                              ),
                                              child: SizedBox(
                                                height: 250,
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        16,
                                                      ), // roundness
                                                  child: Image.asset(
                                                    'assets/img/drawerHeaderCover.jpg',
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),

                                            Padding(
                                              padding: const EdgeInsets.all(
                                                8.0,
                                              ),
                                              child: Align(
                                                alignment:
                                                    AlignmentGeometry.topLeft,

                                                child: Text('Mezmure'),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(
                                                8.0,
                                              ),
                                              child: Align(
                                                alignment:
                                                    AlignmentGeometry.topLeft,

                                                child: Text('Mezmure'),
                                              ),
                                            ),

                                            Padding(
                                              padding: const EdgeInsets.all(
                                                8.0,
                                              ),
                                              child: Align(
                                                alignment:
                                                    AlignmentGeometry.center,

                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  spacing: 40.0,
                                                  children: [
                                                    IconButton.outlined(
                                                      onPressed: () {
                                                        // _audioPlayer.play();
                                                      },
                                                      icon: Icon(
                                                        Icons.skip_previous,
                                                        color:
                                                            Colors.deepOrange,
                                                      ),
                                                    ),
                                                    IconButton.outlined(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons
                                                            .play_arrow, //Icons.pause
                                                        color:
                                                            Colors.deepOrange,
                                                      ),
                                                    ),
                                                    IconButton.outlined(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons.skip_next,
                                                        color:
                                                            Colors.deepOrange,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 40.0,
                      children: [
                        IconButton.outlined(
                          onPressed: () {
                            // _audioPlayer.play();
                          },
                          icon: Icon(
                            Icons.skip_previous,
                            color: Colors.deepOrange,
                          ),
                        ),
                        IconButton.outlined(
                          onPressed: () {},
                          icon: Icon(
                            Icons.play_arrow, //Icons.pause
                            color: Colors.deepOrange,
                          ),
                        ),
                        IconButton.outlined(
                          onPressed: () {},
                          icon: Icon(Icons.skip_next, color: Colors.deepOrange),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
