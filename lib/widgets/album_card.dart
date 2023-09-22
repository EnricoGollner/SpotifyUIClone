import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/views/album_view.dart';

class AlbumCard extends StatelessWidget {
  final String imageLink;
  final String label;
  final double? cardSize;

  const AlbumCard({
    super.key,
    required this.label,
    required this.imageLink,
    this.cardSize,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AlbumView(image: imageLink),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageLink,
            width: cardSize ?? 120,
            height: cardSize ?? 120,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 10),
          Text(label),
        ],
      ),
    );
  }
}
