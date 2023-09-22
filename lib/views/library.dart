import 'package:flutter/material.dart';

class LibraryView extends StatefulWidget {
  const LibraryView({super.key});

  @override
  State<LibraryView> createState() => _MyState();
}

class _MyState extends State<LibraryView> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Library works"),
    );
  }
}
