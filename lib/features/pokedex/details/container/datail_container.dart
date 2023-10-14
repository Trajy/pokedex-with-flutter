import 'package:flutter/material.dart';
import 'package:pokedex_with_flutter/common/models/pokemon_model.dart';
import 'package:pokedex_with_flutter/common/repository/pokemon_repository_impl.dart';
import 'package:pokedex_with_flutter/features/pokedex/details/pages/datail_page.dart';
import 'package:pokedex_with_flutter/common/widgets/common_error.dart';
import 'package:pokedex_with_flutter/common/widgets/common_loading.dart';

class DetailContainer extends StatelessWidget {
  
  const DetailContainer({super.key, required this.model});

  final Pokemon model;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: PokemonReposotoryImpl.instance.getAllPokemons(),
      builder: (context, snapshot) {
        if(snapshot.connectionState == ConnectionState.waiting) {
          return const CommonLoading();
        }
        if(snapshot.connectionState == ConnectionState.done) {
          return DetailPage(model: model);
        }
        if(snapshot.hasError) {
          return CommonError(error: snapshot.error.toString());
        }
        return const CommonError();
    });
  }
}