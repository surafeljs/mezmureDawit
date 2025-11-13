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
    loadTheme();
  }

  Future<void> loadTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? themePref = prefs.getBool('isDartMode') ?? false;
    setState(() {
      isThems = themePref;
    });
  }

  Future<void> updateTheme(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDartMode', value);
    setState(() {
      isThems = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isThems ? ThemeData.dark() : ThemeData.light(),

      debugShowCheckedModeBanner: false,

      home: HomeScreen(
        isThems: isThems,
        fontType: null,
        onThemeChanged: updateTheme,
      ),
    );
  }
}
