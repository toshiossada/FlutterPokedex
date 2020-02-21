import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex/app/modules/home/shared/components/poke_image/poke_image_widget.dart';
import 'package:pokedex/app/shared/controllers/pokeapi_controller.dart';
import 'package:pokedex/app/shared/utils/consts_app.dart';
import 'package:simple_animations/simple_animations/controlled_animation.dart';
import 'package:simple_animations/simple_animations/multi_track_tween.dart';

class ImageWidget extends StatelessWidget {
  final PageController pageController;
  final int index;
  final Function getPokemon;
  final Function onPageChanged;
  final int pokemonLenght;
  final tween = MultiTrackTween([
    Track("rotation").add(Duration(seconds: 5), Tween(begin: 0.0, end: 6),
        curve: Curves.linear)
  ]);

  ImageWidget({
    Key key,
    this.index,
    this.getPokemon,
    this.onPageChanged,
    this.pokemonLenght,
    this.pageController,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var _pokeApiController = Modular.get<PokeApiController>();
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
                bool currentPosition =
                    _pokemon.id == _pokeApiController.getPokemonAtual.id;
                return Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    ControlledAnimation(
                      playback: Playback.LOOP,
                      duration: tween.duration,
                      tween: tween,
                      builder: (context, animation) {
                        return Transform.rotate(
                          child: Hero(
                            child: Opacity(
                              opacity: 0.2,
                              child: Image.asset(
                                ConstsApp.whitePokeball,
                                width: 200,
                                height: 200,
                              ),
                            ),
                            tag: num,
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
