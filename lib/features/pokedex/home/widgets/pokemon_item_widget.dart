import 'package:flutter/material.dart';
import 'package:pokedex_with_flutter/common/models/pokemon_model.dart';
import 'package:pokedex_with_flutter/features/pokedex/home/widgets/pokemon_type_widget.dart';

class PokemonItemWidget extends StatelessWidget {

  const PokemonItemWidget({super.key, required this.model});

  final Pokemon model;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: model.baseColor
      ),
      child: Column(
        children: [
          Text(model.name),
          Row(
            children: [
              Column(
                children: model.types.map((e) => PokemonTypeWidget(type: e)).toList(),
              ),
              Image.network(model.image)
            ]
          )
        ],
      ),
    );
  }
}