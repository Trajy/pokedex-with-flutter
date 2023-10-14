import 'package:flutter/material.dart';

class PokemonTypeWidget extends StatelessWidget {
  
  const PokemonTypeWidget({super.key, required this.type});

  final String type;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(type)
    );
  }
}