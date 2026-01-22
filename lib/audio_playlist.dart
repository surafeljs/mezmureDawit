import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class Playlist extends StatefulWidget {
  const Playlist({super.key});

  @override
  State<Playlist> createState() => _PlaylistState();
}

AudioPlayer _player = AudioPlayer();

class _PlaylistState extends State<Playlist> {
  @override
  @override
  void initState() {
    super.initState();

    // Use a separate async function for initialization
    _initPlayer();
  }

  Future<void> _initPlayer() async {
    try {
      // Load the audio asset
      await _player.setAsset('assets/audio/song.mp3');

      // Start playing
    } catch (e) {
      print('Error loading audio: $e');
    }
  }

  @override
  void dispose() {
    // Release the player when widget is destroyed
    _player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'መዝሙረ ዳዊት ዜማ 1 - 150',
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 2.0),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Expanded scrollable list
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 20.0, bottom: 10.0),

                child: ListView.builder(
                  itemCount: 150,

                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const Icon(
                        Icons.music_note,
                        weight: 700,
                        color: Colors.deepOrange,
                      ),
                      title: Text(
                        'መዝሙረ ዳዊት ዜማ ${index + 1}',
                        style: TextStyle(),
                      ),
                    );
                  },
                ),
              ),
            ),

            // Bottom control row
            Container(
              margin: const EdgeInsets.only(bottom: 30.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color.fromARGB(107, 218, 212, 193),
              ),
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.skip_previous,
                      size: 30,
                      weight: 700,
                      color: Colors.deepOrange,
                    ),
                  ),
                  const SizedBox(width: 40),
                  IconButton(
                    onPressed: () {
                      _player.play();
                    },
                    icon: const Icon(
                      Icons.play_arrow,
                      size: 50,
                      weight: 700,

                      color: Colors.deepOrange,
                    ),
                  ),
                  const SizedBox(width: 40),
                  IconButton(
                    onPressed: () {
                      _player.pause();
                    },
                    icon: const Icon(
                      Icons.skip_next,
                      size: 30,
                      weight: 700,

                      color: Colors.deepOrange,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
