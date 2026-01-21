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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Hero(
                tag: 'audio_playlist',
                child: Container(
                  width: 200.0,
                  height: 200.0,
                  color: Colors.red,
                ),
              ),
            ),

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color.fromARGB(107, 218, 212, 193),
              ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 40.0,
                  children: [
                    IconButton.outlined(
                      onPressed: () {},
                      icon: Icon(Icons.skip_previous, color: Colors.deepOrange),
                    ),
                    IconButton.outlined(
                      onPressed: () {},
                      icon: Icon(
                        size: 40.0,
                        Icons.play_arrow, //Icons.pause
                        color: Colors.deepOrange,
                      ),
                    ),
                    IconButton.outlined(
                      onPressed: () {},
                      icon: Icon(Icons.skip_next, color: Colors.deepOrange),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
