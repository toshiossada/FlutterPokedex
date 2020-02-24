import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pokedex/app/modules/home/shared/components/poke_image/poke_image_widget.dart';
import 'package:pokedex/app/modules/home/shared/poke_background/poke_background_widget.dart';
import 'package:simple_animations/simple_animations/controlled_animation.dart';
import 'package:simple_animations/simple_animations/multi_track_tween.dart';

class ImageWidget extends StatelessWidget {
  final PageController pageController;
  final int index;
  final Function getPokemon;
  final Function onPageChanged;
  final Function getCurrentPokemon;
  final int pokemonLenght;
  final tween = MultiTrackTween([
    Track("rotation").add(Duration(seconds: 5), Tween(begin: 0.0, end: 6),
        curve: Curves.linear)
  ]);

  ImageWidget(
      {Key key,
      this.index,
      this.getPokemon,
      this.onPageChanged,
      this.pokemonLenght,
      this.pageController,
      this.getCurrentPokemon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70),
      child: Positioned(
        child: SizedBox(
          height: 200,
          child: PageView.builder(
            controller: pageController,
            onPageChanged: onPageChanged,
            itemCount: pokemonLenght,
            itemBuilder: (_, index) {
              return Observer(builder: (_) {
                var _pokemon = getPokemon(index: index);
                bool currentPosition = _pokemon.id == getCurrentPokemon();

                return Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    ControlledAnimation(
                      playback: Playback.LOOP,
                      duration: tween.duration,
                      tween: tween,
                      builder: (context, animation) {
                        return Transform.rotate(
                          child: PokeBackgroundWidget(
                            num: _pokemon.num,
                            width: 200,
                            height: 200,
                          ),
                          angle: animation['rotation'],
                        );
                      },
                    ),
                    AnimatedPadding(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.bounceInOut,
                      padding: EdgeInsets.all(currentPosition ? 0 : 60),
                      child: PokeImageWidget(
                          num: _pokemon.num,
                          width: 160,
                          height: 160,
                          currentPosition: currentPosition),
                    ),
                  ],
                );
              });
            },
          ),
        ),
      ),
    );
  }
}
