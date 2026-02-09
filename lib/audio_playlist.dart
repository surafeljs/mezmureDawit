import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class Playlist extends StatefulWidget {
  final ScrollController scrollController;

  const Playlist({super.key, required this.scrollController});

  @override
  State<Playlist> createState() => _PlaylistState();
}

// Song model
class Song {
  final String title;
  final String url;

  Song({required this.title, required this.url});
}

class _PlaylistState extends State<Playlist> {
  final AudioPlayer _player = AudioPlayer();

  // Songs for UI & Audio
  final List<Song> songs = [
    Song(
      title: 'መዝሙረ ዳዊት 1 - 30',
      url:
          'https://res.cloudinary.com/djmvcfeyr/video/upload/v1769172486/%E1%88%98%E1%8B%9D%E1%88%99%E1%88%A8_%E1%8B%B3%E1%8B%8A%E1%89%B5_Mezmure_Dawit_-_%E1%88%B0%E1%8A%9E__%E1%88%98%E1%8B%9D_1-30__256k_1_oudsje.mp3',
    ),
    Song(
      title: 'መዝሙረ ዳዊት 31 - 60',
      url:
          'https://res.cloudinary.com/djmvcfeyr/video/upload/v1769172486/%E1%88%98%E1%8B%9D%E1%88%99%E1%88%A8_%E1%8B%B3%E1%8B%8A%E1%89%B5_Mezmure_Dawit_-_%E1%88%B0%E1%8A%9E__%E1%88%98%E1%8B%9D_1-30__256k_1_oudsje.mp3',
    ),
    Song(
      title: 'መዝሙረ ዳዊት 61 - 80',
      url:
          'https://res.cloudinary.com/djmvcfeyr/video/upload/v1769172486/%E1%88%98%E1%8B%9D%E1%88%99%E1%88%A8_%E1%8B%B3%E1%8B%8A%E1%89%B5_Mezmure_Dawit_-_%E1%88%B0%E1%8A%9E__%E1%88%98%E1%8B%9D_1-30__256k_1_oudsje.mp3',
    ),
    Song(
      title: 'መዝሙረ ዳዊት 81 - 110',
      url:
          'https://res.cloudinary.com/djmvcfeyr/video/upload/v1769172486/%E1%88%98%E1%8B%9D%E1%88%99%E1%88%A8_%E1%8B%B3%E1%8B%8A%E1%89%B5_Mezmure_Dawit_-_%E1%88%B0%E1%8A%9E__%E1%88%98%E1%8B%9D_1-30__256k_1_oudsje.mp3',
    ),
    Song(
      title: 'መዝሙረ ዳዊት 111 - 130',
      url:
          'https://res.cloudinary.com/djmvcfeyr/video/upload/v1769172486/%E1%88%98%E1%8B%9D%E1%88%99%E1%88%A8_%E1%8B%B3%E1%8B%8A%E1%89%B5_Mezmure_Dawit_-_%E1%88%B0%E1%8A%9E__%E1%88%98%E1%8B%9D_1-30__256k_1_oudsje.mp3',
    ),
    Song(
      title: 'መዝሙረ ዳዊት 131 - 150',
      url:
          'https://res.cloudinary.com/djmvcfeyr/video/upload/v1769172486/%E1%88%98%E1%8B%9D%E1%88%99%E1%88%A8_%E1%8B%B3%E1%8B%8A%E1%89%B5_Mezmure_Dawit_-_%E1%88%B0%E1%8A%9E__%E1%88%98%E1%8B%9D_1-30__256k_1_oudsje.mp3',
    ),
  ];

  late final List<AudioSource> playlist;

  @override
  void initState() {
    super.initState();
    _initPlayer();
  }

  Future<void> _initPlayer() async {
    // Convert songs to AudioSource
    playlist = songs
        .map((song) => AudioSource.uri(Uri.parse(song.url)))
        .toList();

    try {
      await _player.setAudioSources(
        playlist,
        initialIndex: 0,
        initialPosition: Duration.zero,
      );
    } catch (e) {
      print('Error loading audio: $e');
    }
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Playlist UI
            SizedBox(height: 50),
            Expanded(
              child: StreamBuilder<int?>(
                stream: _player.currentIndexStream,
                builder: (context, snapshot) {
                  final currentIndex = snapshot.data ?? -1;

                  return ListView.builder(
                    controller: widget.scrollController,
                    itemCount: songs.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        contentPadding: EdgeInsets.all(18),
                        focusColor: Colors.amber,
                        hoverColor: Colors.blueAccent,
                        textColor: Colors.deepPurpleAccent,
                        leading: ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(25),
                          child: Container(
                            color: const Color.fromARGB(107, 218, 212, 193),
                            child: Icon(
                              size: 40.0,

                              currentIndex == index
                                  ? Icons.play_arrow
                                  : Icons.music_note,
                              color: currentIndex == index
                                  ? Colors.orange
                                  : Colors.grey,
                            ),
                          ),
                        ),
                        title: Text(
                          songs[index].title,
                          style: TextStyle(fontSize: 15.0),
                        ),
                        subtitle: Text('Play'),
                        onTap: () async {
                          await _player.seek(Duration.zero, index: index);
                          await _player.play();
                        },
                      );
                    },
                  );
                },
              ),
            ),
            SizedBox(height: 20),

            // Bottom controls
            Container(
              margin: const EdgeInsets.only(bottom: 30.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color.fromARGB(107, 218, 212, 193),
              ),
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      if (_player.hasPrevious) _player.seekToPrevious();
                    },
                    icon: const Icon(
                      Icons.skip_previous,
                      size: 50,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(width: 40),
                  StreamBuilder<PlayerState>(
                    stream: _player.playerStateStream,
                    builder: (context, snapshot) {
                      final playing = snapshot.data?.playing ?? false;

                      return IconButton(
                        onPressed: () {
                          playing ? _player.pause() : _player.play();
                          setState(() {
                            counter++;
                          });
                        },
                        icon: Container(
                          decoration: BoxDecoration(
                            color: Colors.black26,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),

                          child: AnimatedSwitcher(
                            duration: Duration(milliseconds: 300),
                            transitionBuilder: (child, animation) {
                              return FadeTransition(
                                opacity: animation,
                                child: ScaleTransition(
                                  scale: animation,
                                  child: child,
                                ),
                              );
                            },
                            child: Icon(
                              key: ValueKey<int>(counter),
                              playing ? Icons.pause : Icons.play_arrow,
                              size: 50,
                              color: playing ? Colors.orange : Colors.white,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(width: 40),
                  IconButton(
                    onPressed: () {
                      if (_player.hasNext) _player.seekToNext();
                    },
                    icon: const Icon(
                      Icons.skip_next,
                      size: 40,
                      color: Colors.grey,
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
