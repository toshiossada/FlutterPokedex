import 'package:flutter/material.dart';
import 'package:pokedex/app/modules/home/shared/components/poke_image/poke_image_widget.dart';

class ImageWidget extends StatelessWidget {
  final PageController pageController;
  final int index;
  final Function getPokemon;
  final Function onPageChanged;
  final int pokemonLenght;

  const ImageWidget(
      {Key key,
      this.index,
      this.getPokemon,
      this.onPageChanged,
      this.pokemonLenght,
      this.pageController})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Positioned(
        child: SizedBox(
          height: 200,
          child: PageView.builder(
            controller: pageController,
            onPageChanged: onPageChanged,
            itemCount: pokemonLenght,
            itemBuilder: (_, index) {
              var _pokemon = getPokemon(index: index);
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
