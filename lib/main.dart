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
      theme: ThemeData(
        textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.black)),
        scaffoldBackgroundColor: Colors.white,
        drawerTheme: DrawerThemeData(backgroundColor: Colors.white),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.amber,
        ),
        expansionTileTheme: ExpansionTileThemeData(
          collapsedIconColor: Colors.deepOrangeAccent,
          collapsedTextColor: Colors.black,
          iconColor: Colors.green,
        ),
      ),

      darkTheme: ThemeData(
        drawerTheme: DrawerThemeData(backgroundColor: Colors.black),

        expansionTileTheme: ExpansionTileThemeData(
          textColor: Colors.white,
          collapsedIconColor: Colors.deepOrangeAccent,
          collapsedTextColor: Colors.white,
          iconColor: Colors.amberAccent,
        ),

        textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.white)),
        scaffoldBackgroundColor: Colors.black12,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.deepOrangeAccent,
        ),
        popupMenuTheme: PopupMenuThemeData(color: Colors.black),
        listTileTheme: ListTileThemeData(
          textColor: Colors.white,
          iconColor: Colors.orange,
        ),
      ),

      themeMode: isThems ? ThemeMode.dark : ThemeMode.light,

      debugShowCheckedModeBanner: false,

      home: HomeScreen(
        drawerIndex: 0,
        isThems: isThems,
        fontType: null,

        onThemeChanged: updateTheme,
        indexs: null,
        fontSize: null,
      ),
    );
  }
}
