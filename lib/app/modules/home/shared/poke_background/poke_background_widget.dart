import 'package:flutter/material.dart';

import 'package:pokedex/app/shared/utils/consts_app.dart';

class PokeBackgroundWidget extends StatelessWidget {
  final String num;
  final double width;
  final double height;

  const PokeBackgroundWidget({
    Key key,
    this.num,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      child: Opacity(
        opacity: 0.2,
        child: Image.asset(
          ConstsApp.whitePokeball,
          width: width,
          height: height,
        ),
      ),
      tag: '${num}_rotation',
    );
  }
}
