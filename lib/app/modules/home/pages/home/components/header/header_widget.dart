import 'package:flutter/material.dart';
import 'package:pokedex/app/shared/utils/consts_app.dart';

class HeaderWidget extends StatelessWidget {
  final double screenWidth;

  const HeaderWidget({Key key, this.screenWidth = 100}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -(240 / 4.2),
      left: screenWidth - (240 / 1.6),
      child: Opacity(
        child: Image.asset(
          ConstsApp.blackPokeball,
          width: 240,
          height: 240,
        ),
        opacity: 0.1,
      ),
    );
  }
}
