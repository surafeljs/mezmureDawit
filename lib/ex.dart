import 'dart:ui';

import 'package:flutter/material.dart';

class Ex extends StatelessWidget {
  const Ex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ClipRect(
          child: SizedBox(
            width: 300,
            height: 300,
            child: Image.asset('assets/img/drawerHeaderCover.jpg'),
          ),
        ),
      ),
    );
  }
}
