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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColorFiltered(
        colorFilter: ColorFilter.mode(
          Colors.black.withValues(alpha: 0.5),
          BlendMode.darken,
        ),
        child: SizedBox.expand(
          child: Image.asset(
            'assets/img/drawerHeaderCover.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
