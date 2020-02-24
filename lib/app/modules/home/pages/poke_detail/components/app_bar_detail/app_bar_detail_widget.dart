import 'package:flutter/material.dart';
import 'package:pokedex/app/modules/home/shared/poke_background/poke_background_widget.dart';
import 'package:simple_animations/simple_animations/controlled_animation.dart';
import 'package:simple_animations/simple_animations/multi_track_tween.dart';

class AppBarDetailWidget extends StatelessWidget {
  final String pokemonName;
  final Color backgoundColor;
  final double opacity;
  final MultiTrackTween tween;

  const AppBarDetailWidget({
    Key key,
    this.pokemonName,
    this.backgoundColor,
    this.opacity,
    this.tween,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Opacity(
        opacity: opacity,
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
      backgroundColor: backgoundColor,
      actions: <Widget>[
        Align(
          alignment: Alignment.center,
          child: Stack(
            alignment: Alignment.centerRight,
            children: <Widget>[
              Opacity(
                opacity: opacity,
                child: ControlledAnimation(
                  playback: Playback.LOOP,
                  duration: tween.duration,
                  tween: tween,
                  builder: (context, animation) {
                    return Transform.rotate(
                      child: PokeBackgroundWidget(
                        num: 'appbar_pokeballwhite',
                        width: 48,
                        height: 48,
                      ),
                      angle: animation['rotation'],
                    );
                  },
                ),
              ),
              IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
