import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  const Button({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(const Color(0xff639655)),
        minimumSize: MaterialStateProperty.all(const Size(double.infinity, 50)),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.8
        ),
      ),
    );
  }
}