import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_modular/app/shared/utils/consts_app.dart';

class PokeImageWidget extends StatelessWidget {
  final String num;
  final double width;
  final double height;
  final bool currentPosition;
  final Alignment alignment;

  const PokeImageWidget(
      {Key key,
      this.num,
      this.width,
      this.height,
      this.currentPosition = true,
      this.alignment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      alignment: alignment == null ? Alignment.center : alignment,
      height: height,
      width: width,
      color: currentPosition ? null : Colors.black.withOpacity(0.5),
      placeholder: (context, url) => new Container(
        color: Colors.transparent,
      ),
      imageUrl: Constants.pokeImgUrl(num),
    );
  }
}
