import 'package:flutter/material.dart';

class TextForm extends StatefulWidget {
  final TextEditingController? controller;
  final String hintText;
  
  const TextForm({
    super.key, 
    this.controller,
    required this.hintText, 
  });

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
          focusColor: const Color(0xFF39B54A),
          hintText: widget.hintText,
        ),
        controller: widget.controller,
      ),
    );
  }
}