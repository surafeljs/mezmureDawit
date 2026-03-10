import 'package:flutter/material.dart';

class EX1 extends StatefulWidget {
  const EX1({super.key});

  @override
  State<EX1> createState() => _EX1State();
}

class _EX1State extends State<EX1> {
  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(body: SafeArea(child: Text(data.toString())));
  }
}
