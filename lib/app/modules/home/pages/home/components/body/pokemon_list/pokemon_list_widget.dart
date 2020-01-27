import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex/app/shared/controllers/pokeapi_controller.dart';

import 'card_item/card_item_widget.dart';

class PokemonListWidget extends StatelessWidget {
  final _pokeApiController = Modular.get<PokeApiController>();
  PokemonListWidget() {
    _pokeApiController.fetchPokemonList();
  }
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (c) {
        var pokeApi = _pokeApiController?.pokemon;
        return pokeApi == null
            ? Center(
                child: CircularProgressIndicator(),
              )
            : CardItemWidget();
      },
    );
  }
}
