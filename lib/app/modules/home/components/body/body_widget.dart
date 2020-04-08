import 'package:flutter/material.dart';
import 'package:pokedex_modular/app/modules/home/components/app_bar/app_bar_widget.dart';
import 'package:pokedex_modular/app/modules/home/components/body/pokemon_list/pokemon_list_widget.dart';
import 'package:pokedex_modular/app/modules/home/models/list_pokemon_model.dart';
import 'package:pokedex_modular/app/modules/home/models/pokemon_model.dart';

class BodyWidget extends StatelessWidget {
  final ListPokemonModel pokemon;
  final List<PokemonModel> pokemons;

  const BodyWidget({Key key, this.pokemon, this.pokemons}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            AppBarWidget(),
            Container(
              child: Expanded(
                child: Container(
                  child:
                      PokemonListWidget(pokemon: pokemon, pokemons: pokemons),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
