import 'package:flutter/material.dart';
import 'package:orthodox/home_creen.dart';

import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(Orthodox());
}

class Orthodox extends StatefulWidget {
  const Orthodox({super.key});

  @override
  State<Orthodox> createState() => _OrthodoxState();
}

class _OrthodoxState extends State<Orthodox> {
  bool isThems = false;
  @override
  void initState() {
    super.initState();
    getDatas();
  }

  Future<void> setDatas(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isDark', isThems);
    setState(() {
      isThems = value;
    });
  }

  Future<void> getDatas() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? prefss = prefs.getBool('isDark') ?? false;

    setState(() {
      isThems = prefss;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isThems ? ThemeData.dark() : ThemeData.light(),
      debugShowCheckedModeBanner: false,

      home: HomeScreen(isThems: isThems, onThemeChanged: setDatas),
    );
  }
}
