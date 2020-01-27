import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex/app/modules/home/shared/components/poke_image/poke_image_widget.dart';
import 'package:pokedex/app/shared/controllers/pokeapi_controller.dart';

class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PokeApiController _pokeApiController = Modular.get();
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Positioned(
        child: SizedBox(
          height: 200,
          child: PageView.builder(
            onPageChanged: (index) {
              _pokeApiController.setPokemonAtual(index: index);
            },
            itemCount: _pokeApiController.pokemonLength,
            itemBuilder: (_, index) {
              var _pokemon = _pokeApiController.getPokemon(index: index);
              return PokeImageWidget(
                num: _pokemon.num,
                width: 60,
                height: 60,
              );
            },
          ),
        ),
      ),
    );
  }
}
