import 'package:flutter/material.dart';
import 'package:pokedex_with_flutter/features/pokedex/home/container/home_container.dart';

class PokedexRoute extends StatelessWidget {
  const PokedexRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: '/',
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (context) {
          return const HomeContainer();
        });
      },
    );
  }
}