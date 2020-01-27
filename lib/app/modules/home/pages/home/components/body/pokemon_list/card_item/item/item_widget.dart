import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:pokedex/app/modules/home/components/body/pokemon_list/card_item/item/poke_item/poke_item_widget.dart';
import 'package:pokedex/app/shared/controllers/pokeapi_controller.dart';
import 'package:pokedex/app/shared/models/pokemon_model.dart';
import 'package:pokedex/app/shared/utils/utils.dart';

class ItemWidget extends StatelessWidget {
  final int index;

  const ItemWidget({Key key, this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    PokeApiController _pokeApiController = Modular.get();
    Pokemon pokemon = _pokeApiController.getPokemon(index: index);

    return AnimationConfiguration.staggeredGrid(
      position: index,
      duration: const Duration(milliseconds: 375),
      columnCount: 2,
      child: ScaleAnimation(
        child: GestureDetector(
          child: PokeItemWidget(
            types: pokemon.type,
            index: index,
            name: pokemon.name,
            num: pokemon.num,
            color: Utils.getColorType(type: pokemon.type[0]),
          ),
          onTap: () {
            _pokeApiController.setPokemonAtual(index: index);
            Modular.to.pushNamed('/details/$index');
          },
        ),
      ),
    );
  }
}
