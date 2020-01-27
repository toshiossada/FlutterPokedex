import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 13, right: 5),
              child: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Pokedex',
                style: TextStyle(
                    fontFamily: 'PokemonFont',
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
