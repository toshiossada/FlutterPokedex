import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:pokedex_modular/app/modules/home/models/pokedex_model.dart';
import 'package:pokedex_modular/app/modules/home/models/pokemon_model.dart';
import 'package:pokedex_modular/app/shared/utils/utils.dart';

import 'pokemon/pokemon_widget.dart';

class CardItemWidget extends StatelessWidget {
  final int index;
  final PokemonEntry pokemon;
  final List<PokemonModel> pokemons;

  CardItemWidget({Key key, this.index, this.pokemon, this.pokemons})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var poke = pokemons.firstWhere((element) => element.id == index);
    return AnimationConfiguration.staggeredGrid(
      position: index,
      duration: const Duration(milliseconds: 375),
      columnCount: 2,
      child: ScaleAnimation(
        child: GestureDetector(
          child: PokemonWidget(
            types: poke.types,
            index: index,
            name: poke.name,
            num: index.toString().padLeft(3, '0'),
            color: Utils.getColorType(
                type: poke.types.firstWhere((e) => e.slot == 1).type.name),
          ),
          onTap: () {
            Modular.to.pushNamed('/details/${index - 1}', arguments: pokemons);
          },
        ),
      ),
    );
  }
}
