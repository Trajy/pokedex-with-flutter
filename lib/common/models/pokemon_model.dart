import 'dart:convert';

import 'package:flutter/material.dart';

class Pokemon {
  
  final String name;
  final String image;
  final List<String> types;
  final int id;
  final String num;

  Pokemon({
    required this.name,
    required this.image,
    required this.types,
    required this.id,
    required this.num
  });

  Color? get baseColor => _color(type: types[0] ?? '');

  factory Pokemon.fromMap(Map<String, dynamic> map) {
    return Pokemon(
      name: map['name'], 
      image: map['img'],
      types:(map['type'] as List<dynamic>).map((e) => e as String).toList(),
      id: map['id'],
      num: map['num']
    );
  }

  static Color? _color({required String type}) {
    switch (type) {
      case 'Normal':
        return Colors.brown[400];
      case 'Fire':
        return Colors.red;
      case 'Water':
        return Colors.blue;
      case 'Grass':
        return Colors.green;
      case 'Electric':
        return Colors.amber;
      case 'Ice':
        return Colors.cyanAccent[400];
      case 'Fighting':
        return Colors.orange;
      case 'Poison':
        return Colors.purple;
      case 'Ground':
        return Colors.orange[300];
      case 'Flying':
        return Colors.indigo[200];
      case 'Psychic':
        return Colors.pink;
      case 'Bug':
        return Colors.lightGreen[500];
      case 'Rock':
        return Colors.grey;
      case 'Ghost':
        return Colors.indigo[400];
      case 'Dark':
        return Colors.brown;
      case 'Dragon':
        return Colors.indigo[800];
      case 'Steel':
        return Colors.blueGrey;
      case 'Fairy':
        return Colors.pinkAccent[100];
      default:
        return Colors.grey;
    }
  }

}
