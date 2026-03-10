import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 10));
    Navigator.pushNamed(context, '/ex', arguments: 'hello world');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Container(
            color: const Color.fromARGB(255, 255, 236, 179),
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 90.0,
                      ),
                    ),
                  ),
                ),
                Spacer(),
                LoadingAnimationWidget.dotsTriangle(
                  color: Colors.red,
                  size: 40,
                ),
                // Loading Text
                SizedBox(height: 60.0),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Text(
                    'v.10.0',
                    style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
