import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex/app/shared/controllers/pokeapi_controller.dart';

class AppBarDetailWidget extends StatelessWidget {
  final String pokemonName;

  const AppBarDetailWidget({Key key, this.pokemonName}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    PokeApiController _pokeApiController = Modular.get();
    return Observer(builder: (_) {
      return AppBar(
        title: Opacity(
          opacity: 0,
          child: Text(
            pokemonName,
            style: TextStyle(
              fontFamily: 'PokemonFont',
              fontWeight: FontWeight.bold,
              fontSize: 21,
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: _pokeApiController.getColorCurrentPokemon,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {},
          ),
        ],
      );
    });
  }
}
