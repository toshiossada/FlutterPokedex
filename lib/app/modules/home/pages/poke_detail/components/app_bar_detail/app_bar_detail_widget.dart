import 'package:flutter/material.dart';

class AppBarDetailWidget extends StatelessWidget {
  final String pokemonName;
  final Color backgoundColor;

  const AppBarDetailWidget({
    Key key,
    this.pokemonName,
    this.backgoundColor,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Opacity(
        opacity: 0,
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
        IconButton(
          icon: Icon(Icons.favorite_border),
          onPressed: () {},
        ),
      ],
    );
  }
}
