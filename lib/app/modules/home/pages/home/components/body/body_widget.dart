import 'package:flutter/material.dart';

import 'app_bar/app_bar_widget.dart';
import 'pokemon_list/pokemon_list_widget.dart';

class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            AppBarWidget(),
            Container(
              child: Expanded(
                child: Container(
                  child: PokemonListWidget(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
