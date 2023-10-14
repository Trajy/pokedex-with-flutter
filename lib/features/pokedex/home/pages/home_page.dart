import 'package:flutter/material.dart';
import 'package:pokedex_with_flutter/common/models/pokemon_model.dart';
import 'package:pokedex_with_flutter/features/pokedex/home/widgets/pokemon_item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.pokemons});

  final List<Pokemon> pokemons;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          crossAxisCount: 2,
          crossAxisSpacing: 24,
          mainAxisSpacing: 24,
          children: pokemons.map((e) => PokemonItemWidget(model: e)).toList(),
        )
    );
  }
}