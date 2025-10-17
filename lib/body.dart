import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,

          bottom: TabBar(
            tabs: [
              Tab(child: Text('data')),
              Tab(child: Text('data')),
              Tab(child: Text('data')),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(child: Text('data')),
            Container(child: Text('data')),
          ],
        ),
      ),
    );
  }
}
