import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/views/album_view.dart';

class SongCard extends StatelessWidget {
  final String songImage;
  final String songLabel;

  const SongCard({super.key, required this.songImage, required this.songLabel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AlbumView(image: songImage),
          ),
        );
      },
      child: SizedBox(
        width: 140,
        child: Column(children: [
          Image.asset(
            songImage,
            width: 140,
            height: 140,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 2),
          Text(
            songLabel,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white54,
            ),
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ]),
      ),
    );
  }
}
