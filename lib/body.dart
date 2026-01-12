import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'data.dart';

class Body extends StatefulWidget {
  final int drawerIndex;
  final Axis bodyBool;
  String? fontTypes;
  final VoidCallback axisHorizontalDirection;
  final VoidCallback axisVerticalDirection;

  Body({
    super.key,
    required this.drawerIndex,

    required this.bodyBool,
    required this.fontTypes,
    required this.axisVerticalDirection,
    required this.axisHorizontalDirection,
  });

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Future<List<Data>> loadMezmureDawit() async {
    final jsonString = await rootBundle.loadString('assets/data/data.json');

    final List<dynamic> jsonList = jsonDecode(jsonString);

    return jsonList.map((e) => Data.fromJson(e)).toList();
  }

  String? displayFont;
  late final ScrollController _scrollController;
  int bodyIndex = 0;
  List<Data> mezmure = [];
  int zz = 0;
  @override
  void initState() {
    super.initState();
    bodyIndex = widget.drawerIndex;
    _scrollController = ScrollController();

    _scrollController.addListener(_onScroll);
    _loadData();

    _initPrefs();

    print("messsss $bodyIndex");
  }

  void _onScroll() {
    if (!_scrollController.hasClients) return;

    // Approximate item height (adjust if needed)
    const double itemHeight = 250;

    final int index = (_scrollController.offset / itemHeight).floor();

    if (index != bodyIndex && index >= 0 && index < mezmure.length) {
      setState(() {
        bodyIndex = index;
      });

      print('Current bodyIndex: $bodyIndex');
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
        const double itemHeight = 250.0; // approximate height of each chapter
        _scrollController.jumpTo(widget.drawerIndex * itemHeight);

        setState(() {
          bodyIndex = widget.drawerIndex;
        });
      }
    });
  }

  List<TextSpan> _highlightEgziabher(String text) {
    const keyword = 'እግዚአብሔ';
    final parts = text.split(keyword);

    return [
      for (int i = 0; i < parts.length; i++) ...[
        TextSpan(text: parts[i]), // normal text

        if (i != parts.length - 1)
          TextSpan(
            text: keyword,
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
          ),
      ],
    ];
  }

  Future<void> _initPrefs() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    if (widget.fontTypes != null && widget.fontTypes!.isNotEmpty) {
      await prefs.setString('font_key', '${widget.fontTypes}');
    }

    final String stored = prefs.getString('font_key') ?? '';

    setState(() {
      displayFont = stored;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: mezmure.length,
      controller: _scrollController,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 5.0),
              child: Padding(
                padding: const EdgeInsets.only(right: 20.0, bottom: 10.0),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    mezmure[index].chapter,
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      wordSpacing: 10.0,
                      fontFamily: '$displayFont',
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 15.0),
              child: Divider(indent: 100.0, color: Colors.deepOrange),
            ),
            // ✅ Replace normal Text with RichText for highlighted words
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 20.0,
                    wordSpacing: 2.0,
                    fontFamily: '$displayFont',
                    color: Colors.indigo, // default text color
                  ),
                  children: _highlightEgziabher(mezmure[index].text),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
