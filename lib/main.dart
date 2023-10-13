import 'package:flutter/material.dart';
import 'package:pokedex_with_flutter/common/repository/pokemon_repository_impl.dart';
import 'package:pokedex_with_flutter/features/home/container/home_container.dart';
import 'package:pokedex_with_flutter/features/home/pages/home_loading.dart';
import 'package:pokedex_with_flutter/features/home/pages/home_page.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeContainer(),
    );
  }
}