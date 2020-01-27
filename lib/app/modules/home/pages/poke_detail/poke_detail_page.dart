import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex/app/modules/home/pages/poke_detail/components/app_bar_detail/app_bar_detail_widget.dart';
import 'package:pokedex/app/modules/home/pages/poke_detail/components/power_info/power_info_widget.dart';
import 'package:pokedex/app/shared/controllers/pokeapi_controller.dart';

import 'components/image/image_widget.dart';

class PokeDetailPage extends StatefulWidget {
  final String title;
  final int index;
  const PokeDetailPage({Key key, this.title = "PokeDetail", this.index})
      : super(key: key);

  @override
  _PokeDetailPageState createState() => _PokeDetailPageState();
}

class _PokeDetailPageState extends State<PokeDetailPage> {
  final _pokeApiController = Modular.get<PokeApiController>();

  @override
  Widget build(BuildContext context) {
    var pokemon = _pokeApiController.getPokemon(index: widget.index);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarDetailWidget(pokemonName: pokemon.name),
      ),
      body: Stack(
        children: <Widget>[
          Observer(
            builder: (_) {
              return Container(
                color: _pokeApiController.getColorCurrentPokemon,
              );
            },
          ),
          Container(
            height: MediaQuery.of(context).size.height / 3,
          ),
          PowerInfoWidget(),
          ImageWidget(),
        ],
      ),
    );
  }
}
