import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:pokedex_modular/app/modules/home/models/list_pokemon_model.dart';
import 'package:pokedex_modular/app/modules/home/models/pokemon_model.dart';

import 'card_item/card_item_widget.dart';

class CardListWidget extends StatelessWidget {
  final List<PokemonModel> pokemons;

  const CardListWidget({Key key, this.pokemons}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: GridView.builder(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(12),
        addAutomaticKeepAlives: true,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: pokemons.length,
        itemBuilder: (context, index) {
          return CardItemWidget(
            index: index + 1,
            pokemons: pokemons
          );
        },
      ),
    );
  }
}
