import 'package:flutter/material.dart';
import 'package:pokedex_with_flutter/common/repository/pokemon_repository_impl.dart';
import 'package:pokedex_with_flutter/features/pokedex/home/container/home_container.dart';
import 'package:pokedex_with_flutter/common/widgets/common_loading.dart';
import 'package:pokedex_with_flutter/features/pokedex/home/pages/home_page.dart';
import 'package:pokedex_with_flutter/features/pokedex/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
        useMaterial3: true,
      ),
      home: const PokedexRoute(),
    );
  }
}