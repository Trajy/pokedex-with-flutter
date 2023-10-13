import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:pokedex_with_flutter/common/constants/api_urls_constants.dart';
import 'package:pokedex_with_flutter/common/models/pokemon_model.dart';
import 'package:pokedex_with_flutter/common/repository/pokemon_repository.dart';

class PokemonReposotoryImpl implements PokemonRepository {

  PokemonReposotoryImpl._privateConstructor();

  static final PokemonReposotoryImpl instance = PokemonReposotoryImpl._privateConstructor();

  static final Dio dio = Dio();

  @override
  Future<List<Pokemon>> getAllPokemons() {
    return dio.get(ApiEnum.POKEMON_API.url)
        .then((response) {
           final json = jsonDecode(response.data) as Map<String, dynamic>;
           final list = json['pokemon'] as List<Map<String, dynamic>>;
           return list.map((value) => Pokemon.fromMap(value)) as List<Pokemon>;
        });
  }

}