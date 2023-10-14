import 'package:flutter/material.dart';

class PokemonTypeWidget extends StatelessWidget {
  
  const PokemonTypeWidget({super.key, required this.type});

  final String type;

  @override
  Widget build(BuildContext context) {
    return 
      Container(
        margin: const EdgeInsets.only(bottom: 2.5, top: 2.5),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.3),
          borderRadius: BorderRadius.circular(16)
        ),
        child: Padding(
          padding: const EdgeInsets.all(6),
          child: Text(
            type,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.bold
            ),
          )
        )
      );
  }
}