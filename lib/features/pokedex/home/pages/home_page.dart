import 'package:flutter/material.dart';
import 'package:pokedex_with_flutter/common/models/pokemon_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.pokemons});

  final List<Pokemon> pokemons;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: pokemons.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(pokemons[index].name),
            onTap: () {
              Navigator.of(context).pushNamed('/details', arguments: pokemons[index]);
            },
          );
        })
    );
  }
}