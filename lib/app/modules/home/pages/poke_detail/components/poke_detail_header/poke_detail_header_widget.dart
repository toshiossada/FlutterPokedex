import 'package:flutter/material.dart';
import 'package:pokedex/app/shared/utils/utils.dart';

class PokeDetailHeaderWidget extends StatelessWidget {
  final double positionTop;
  final double positionLeft;
  final String name;
  final double nameFontSize;
  final String num;
  final List<String> type;

  const PokeDetailHeaderWidget(
      {Key key,
      this.positionTop,
      this.positionLeft,
      this.name,
      this.nameFontSize,
      this.num,
      this.type})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: positionTop,
      left: positionLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                name,
                style: TextStyle(
                    fontFamily: 'PokemonFont',
                    fontSize: nameFontSize,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(width: 50),
              Text(
                '#$num',
                textAlign: TextAlign.end,
                style: TextStyle(
                    fontFamily: 'PokemonFont',
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              children: Utils.setTipos(
                types: type,
                fontsize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
