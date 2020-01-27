import 'package:flutter/material.dart';
import 'package:pokedex/app/modules/home/shared/components/poke_image/poke_image_widget.dart';
import 'package:pokedex/app/shared/utils/consts_app.dart';

class PokeItemWidget extends StatelessWidget {
  final String name;
  final int index;
  final Color color;
  final List<String> types;
  final String num;

  const PokeItemWidget(
      {this.name, this.index, this.color, this.types, this.num});

  Widget setTipos() {
    List<Widget> lista = [];
    types.forEach((nome) {
      lista.add(
        Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(80, 255, 255, 255)),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  nome.trim(),
                  style: TextStyle(
                      fontFamily: 'PokemonFont',
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            )
          ],
        ),
      );
    });
    return Column(
      children: lista,
      crossAxisAlignment: CrossAxisAlignment.start,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Stack(
            children: <Widget>[
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
                    child: setTipos(),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Opacity(
                  opacity: 0.2,
                  child: Image.asset(
                    ConstsApp.whitePokeball,
                    width: 80,
                    height: 80,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: PokeImageWidget(
                  num: num,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
