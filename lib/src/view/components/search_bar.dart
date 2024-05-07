import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoSearchTextField(
      backgroundColor: Colors.grey.shade100,
      padding: const EdgeInsets.all(8.0),
      placeholder: "Procure vegetais",
      placeholderStyle: const TextStyle(
        fontFamily:"Poppins",
        fontSize: 14,
        color: Colors.black38
      ),
      borderRadius:const  BorderRadius.all(Radius.circular(15)),
      prefixIcon: IconButton(
        onPressed: (){},
        icon: const Icon(Icons.search)
      ),
    );
  }
}