import 'package:flutter/material.dart';

class Playlist extends StatefulWidget {
  const Playlist({super.key});

  @override
  State<Playlist> createState() => _PlaylistState();
}

class _PlaylistState extends State<Playlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PlayLists',
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 3.0),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange[400],
      ),
      body: SafeArea(
        child: Center(
          child: Hero(
            tag: 'audio_playlist',
            child: Container(width: 200.0, height: 200.0, color: Colors.red),
          ),
        ),
      ),
    );
  }
}
