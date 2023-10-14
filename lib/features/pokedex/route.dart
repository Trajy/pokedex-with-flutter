import 'package:flutter/material.dart';
import 'package:pokedex_with_flutter/common/models/pokemon_model.dart';
import 'package:pokedex_with_flutter/features/pokedex/details/container/datail_container.dart';
import 'package:pokedex_with_flutter/features/pokedex/home/container/home_container.dart';

class PokedexRoute extends StatelessWidget {
  const PokedexRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: '/',
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (context) {
          if(settings.name == '/') {
            return const HomeContainer();
          }
          if(settings.name == '/details') {
            // TODO - replace this container with details page
            return DetailContainer(model: settings.arguments as Pokemon);
          }
          return Container();
        });
      },
    );
  }
}