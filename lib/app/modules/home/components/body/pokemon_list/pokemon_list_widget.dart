import 'package:flutter/material.dart';
import 'package:pokedex_modular/app/modules/home/models/list_pokemon_model.dart';
import 'package:pokedex_modular/app/modules/home/models/pokemon_model.dart';

import 'card_list/card_list_widget.dart';

class PokemonListWidget extends StatelessWidget {
  final ListPokemonModel pokemon;
  final List<PokemonModel> pokemons;

  const PokemonListWidget({Key key, this.pokemon, this.pokemons})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return pokemon == null
        ? Center(
            child: CircularProgressIndicator(),
          )
        : CardListWidget(
            pokemons: pokemons,
          );
  }
}
