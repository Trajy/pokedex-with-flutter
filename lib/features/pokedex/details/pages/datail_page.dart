import 'package:flutter/material.dart';
import 'package:pokedex_with_flutter/common/models/pokemon_model.dart';

class DetailPage extends StatelessWidget {
  
  const DetailPage({super.key, required this.model});

  final Pokemon model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(model.name),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Text(model.name)
      )
    );
  }
}