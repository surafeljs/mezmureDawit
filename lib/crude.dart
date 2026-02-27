import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;

class CrudExample extends StatefulWidget {
  @override
  State<CrudExample> createState() => _CrudExampleState();
}

class _CrudExampleState extends State<CrudExample> {
  List<int> num = [1, 2, 3, 4, 5, 6, 7, 778, 9, 0];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: Image.asset(
              'assets/img/drawerHeaderCover.jpg',
              fit: BoxFit.cover,
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
            child: Text('v'),
          ),
        ],
      ),
    );
  }
}
