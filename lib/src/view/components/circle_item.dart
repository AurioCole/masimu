import 'package:flutter/material.dart';

class CircleItem extends StatelessWidget {
  const CircleItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        children: <Widget>[
          Column(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("lib/assets/images/veget-3.jpg"),
                    fit: BoxFit.cover
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}