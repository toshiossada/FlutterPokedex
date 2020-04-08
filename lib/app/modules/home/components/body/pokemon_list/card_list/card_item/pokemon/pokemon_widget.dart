import 'package:flutter/material.dart';
import 'package:pokedex_modular/app/modules/home/components/poke_background/poke_background_widget.dart';
import 'package:pokedex_modular/app/modules/home/components/poke_image/poke_image_widget.dart';
import 'package:pokedex_modular/app/modules/home/models/pokemon_model.dart';
import 'package:pokedex_modular/app/shared/utils/utils.dart';

class PokemonWidget extends StatelessWidget {
  final String name;
  final int index;
  final Color color;
  final List<Type> types;
  final String num;

  const PokemonWidget(
      {this.name, this.index, this.color, this.types, this.num});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              color.withOpacity(0.7),
              color,
            ],
          ),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.bottomRight,
                child: PokeBackgroundWidget(num: num, width: 80, height: 80),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 8, top: 8),
                    child: Text(
                      name,
                      style: TextStyle(
                          fontFamily: 'PokemonFont',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(children: Utils.setTipos(types: types)),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: PokeImageWidget(
                  alignment: Alignment.bottomRight,
                  num: num,
                  width: 100,
                  height: 100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
