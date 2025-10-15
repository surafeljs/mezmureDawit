import 'package:flutter/material.dart';
import 'package:orthodox/drawer.dart';

void main() {
  runApp(Orthodox());
}

class Orthodox extends StatefulWidget {
  const Orthodox({super.key});

  @override
  State<Orthodox> createState() => _OrthodoxState();
}

class _OrthodoxState extends State<Orthodox> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.deepOrange),
        drawer: Drawers(),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.airline_seat_legroom_normal),
              label: 'mezmur',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.accessible_forward_rounded),
              label: 'mezmgfhgur',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.access_alarms_outlined),
              label: 'mezmurghg',
            ),
          ],
        ),
        body: SafeArea(
          child: TextField(
            onChanged: (value) {
              setState(() {});
            },
            decoration: InputDecoration(),
          ),
        ),
      ),
    );
  }
}
