import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:pokedex/app/shared/controllers/pokeapi_controller.dart';

import 'item/item_widget.dart';

class CardItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PokeApiController _pokeApiController = Modular.get();
    return AnimationLimiter(
      child: GridView.builder(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(12),
        addAutomaticKeepAlives: true,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: _pokeApiController.pokemonLength,
        itemBuilder: (context, index) {
          return ItemWidget(
            index: index,
          );
        },
      ),
    );
  }
}
