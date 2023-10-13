import 'dart:convert';

class Pokemon {
  final String name;
  final String image;

  factory Pokemon.fromMap(Map<String, dynamic> map) {
    return Pokemon(name: map['name'], image: map['image']);
  }

  Pokemon({required this.name, required this.image});
}