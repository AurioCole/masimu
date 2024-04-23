// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';

class TextForm extends StatefulWidget {
  final String hintText; 
  const TextForm({super.key, required this.hintText});

  @override
  State<TextForm> createState() => _TextFormState();
}

class _TextFormState extends State<TextForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      margin: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: widget.hintText,
        ),
      ),
    );
  }
}