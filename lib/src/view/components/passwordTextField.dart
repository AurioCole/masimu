// ignore_for_file: file_names

import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  final String hintText;

  const PasswordTextField({super.key, required this.hintText});

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      margin: const EdgeInsets.all(8.0),
      child: TextField(
        obscureText: _obscure,
        decoration: InputDecoration(
          hintText: widget.hintText,
          suffixIcon: IconButton(
            color: const Color(0xff639655),
            icon: Icon(_obscure ? Icons.visibility_off : Icons.visibility),
            onPressed: () {
              setState(() {
                _obscure = !_obscure;
              });
            },
          ),
        ),
      ),
    );
  }
}