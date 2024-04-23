// ignore_for_file: file_names

import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 20,
          height: 5,
          color: const Color(0xff639655).withOpacity(0.8)
        ),
        Container(
          width: 40,
          height: 5,
          color: Colors.black12
        ),
      ],
    );  
  }
}