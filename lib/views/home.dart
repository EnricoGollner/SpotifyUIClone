import 'package:flutter/material.dart';

import '../widgets/album_card.dart';
import '../widgets/song_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .5,
            decoration: const BoxDecoration(
              color: Color(0xff1C7A74),
            ),
          ),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0),
                    Colors.black.withOpacity(.9),
                    Colors.black.withOpacity(1),
                    Colors.black.withOpacity(1),
                    Colors.black.withOpacity(1),
                  ],
                ),
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 40),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Recently played",
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.history),
                                SizedBox(width: 20),
                                Icon(Icons.settings),
                              ],
                            )
                          ]),
                    ),
                    const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 14.0),
                        child: Row(
                          children: [
                            AlbumCard(
                              label: "Intro",
                              imageLink: "assets/images/mano_deyvin.jpg",
                            ),
                            SizedBox(width: 15),
                            AlbumCard(
                              label: "Live",
                              imageLink: "assets/images/live.jpg",
                            ),
                            SizedBox(width: 15),
                            AlbumCard(
                              label: "Record",
                              imageLink: "assets/images/record.jpg",
                            ),
                            SizedBox(width: 15),
                            AlbumCard(
                              label: "Music 3",
                              imageLink: "assets/images/mano_deyvin.jpg",
                            ),
                            SizedBox(width: 15),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 32),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            "Good evening",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 16),
                          Row(
                            children: [
                              RowAlbumCard(
                                albumCover: "assets/images/live.jpg",
                                albumLabel: "Top Live",
                              ),
                              SizedBox(width: 15),
                              RowAlbumCard(
                                albumCover: "assets/images/singing.jpg",
                                albumLabel: "Top Live",
                              ),
                            ],
                          ),
                          SizedBox(height: 14),
                          Row(
                            children: [
                              RowAlbumCard(
                                albumCover: "assets/images/playing.jpg",
                                albumLabel: "Top Live",
                              ),
                              SizedBox(width: 15),
                              RowAlbumCard(
                                albumCover: "assets/images/people.jpg",
                                albumLabel: "Top Live",
                              ),
                            ],
                          ),
                          SizedBox(height: 14),
                          Row(
                            children: [
                              RowAlbumCard(
                                albumCover: "assets/images/live_bass.jpg",
                                albumLabel: "Top Live",
                              ),
                              SizedBox(width: 15),
                              RowAlbumCard(
                                albumCover: "assets/images/live.jpg",
                                albumLabel: "Top - Live",
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              "Based on your recent listening",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            physics: BouncingScrollPhysics(),
                            child: Row(
                              children: [
                                SongCard(
                                  songImage: "assets/images/disc.jpg",
                                  songLabel: "REM, Eagles, Aerosmith",
                                ),
                                SizedBox(width: 16),
                                SongCard(
                                  songImage: "assets/images/listening.jpg",
                                  songLabel:
                                      "Foo Fighters, Nirvana, The Police, REM, Eagles",
                                ),
                                SizedBox(width: 16),
                                SongCard(
                                  songImage: "assets/images/record.jpg",
                                  songLabel:
                                      "Ed Sheeran, Taylor Swift, Passenger",
                                ),
                                SizedBox(width: 16),
                                SongCard(
                                  songImage: "assets/images/record.jpg",
                                  songLabel: "Music 4",
                                ),
                                SizedBox(width: 16),
                                SongCard(
                                  songImage: "assets/images/record.jpg",
                                  songLabel: "Music 5",
                                ),
                                SizedBox(width: 16),
                                SongCard(
                                  songImage: "assets/images/record.jpg",
                                  songLabel: "Music",
                                ),
                                SizedBox(width: 16),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              "Recommended radio",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            physics: BouncingScrollPhysics(),
                            child: Row(
                              children: [
                                SongCard(
                                  songImage: "assets/images/live_sing.jpg",
                                  songLabel: "REM, Eagles, Aerosmith",
                                ),
                                SizedBox(width: 16),
                                SongCard(
                                  songImage: "assets/images/record.jpg",
                                  songLabel:
                                      "Foo Fighters, Nirvana, The Police, REM, Eagles",
                                ),
                                SizedBox(width: 16),
                                SongCard(
                                  songImage: "assets/images/listening.jpg",
                                  songLabel: "Music 3",
                                ),
                                SizedBox(width: 16),
                                SongCard(
                                  songImage: "assets/images/record.jpg",
                                  songLabel: "Music 4",
                                ),
                                SizedBox(width: 16),
                                SongCard(
                                  songImage: "assets/images/record.jpg",
                                  songLabel: "Music 5",
                                ),
                                SizedBox(width: 16),
                                SongCard(
                                  songImage: "assets/images/record.jpg",
                                  songLabel: "Music",
                                ),
                                SizedBox(width: 16),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RowAlbumCard extends StatelessWidget {
  final String albumCover;
  final String albumLabel;

  const RowAlbumCard({
    super.key,
    required this.albumCover,
    required this.albumLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white10,
          borderRadius: BorderRadius.circular(4),
        ),
        clipBehavior:
            Clip.antiAlias, // permite que a imagem também herde o border radius
        child: Row(
          children: [
            Image(
              image: AssetImage(albumCover),
              height: 48,
              width: 48,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 8),
            Text(albumLabel)
          ],
        ),
      ),
    );
  }
}
