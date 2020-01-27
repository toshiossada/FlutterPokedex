import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PokeImageWidget extends StatelessWidget {
  final String num;
  final double width;
  final double height;

  const PokeImageWidget(
      {Key key, @required this.num, this.width = 80, this.height = 80})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      height: height,
      width: width,
      placeholder: (context, url) => new Container(
        color: Colors.transparent,
      ),
      imageUrl:
          'https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/$num.png',
    );
  }
}
