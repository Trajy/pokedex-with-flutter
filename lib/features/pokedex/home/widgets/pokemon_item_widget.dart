import 'package:flutter/material.dart';
import 'package:pokedex_with_flutter/common/models/pokemon_model.dart';
import 'package:pokedex_with_flutter/features/pokedex/home/widgets/pokemon_type_widget.dart';

class PokemonItemWidget extends StatelessWidget {

  const PokemonItemWidget({super.key, required this.model});

  final Pokemon model;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed('/details', arguments: model), 
      child: Container(
        decoration: BoxDecoration(
          color: model.baseColor!.withOpacity(0.6),
          borderRadius: BorderRadius.circular(30)
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              model.name,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: model.types.map((e) => PokemonTypeWidget(type: e)).toList(),
                ),
                Flexible(
                  child: Image.network(model.image)
                )
              ]
            )
          ],
        )
      )
    );
  }
}