import 'package:flutter/material.dart';

class FavouritesWidget extends StatefulWidget {
  const FavouritesWidget({super.key});

  @override
  State<FavouritesWidget> createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<FavouritesWidget> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Favoritos"),
    );
  }
}