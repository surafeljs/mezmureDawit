import 'dart:convert';
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
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(color: Colors.red));
  }
}
