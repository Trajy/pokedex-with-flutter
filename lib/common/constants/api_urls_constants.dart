enum ApiEnum {

  POKEMON_API('https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json');

  const ApiEnum(this.url);

  final String url;

}