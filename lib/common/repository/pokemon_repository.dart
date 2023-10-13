import 'package:pokedex_with_flutter/common/models/pokemon_model.dart';

abstract class PokemonRepository {

  Future<List<Pokemon>> getAllPokemons();

}