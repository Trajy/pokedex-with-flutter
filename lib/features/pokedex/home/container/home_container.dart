import 'package:flutter/material.dart';
import 'package:pokedex_with_flutter/common/models/pokemon_model.dart';
import 'package:pokedex_with_flutter/common/repository/pokemon_repository_impl.dart';
import 'package:pokedex_with_flutter/features/pokedex/home/pages/home_error.dart';
import 'package:pokedex_with_flutter/features/pokedex/home/pages/home_loading.dart';
import 'package:pokedex_with_flutter/features/pokedex/home/pages/home_page.dart';

class HomeContainer extends StatelessWidget {
    
    const HomeContainer({super.key});

    static final PokemonReposotoryImpl reposotory = PokemonReposotoryImpl.instance;

    @override
    Widget build(BuildContext context) {
    return FutureBuilder<List<Pokemon>>(
        future: reposotory.getAllPokemons(),
        builder: (context, snapshot) {
            if(snapshot.connectionState == ConnectionState.waiting) {
            return const HomeLoading();
            }
            if(snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
            return HomePage(pokemons: snapshot.data!);
            }
            if(snapshot.hasError) {
            return HomeError(error: snapshot.error.toString());
            }
            return const HomeError(error: "Unknown error");
        }, 
    );
}
}