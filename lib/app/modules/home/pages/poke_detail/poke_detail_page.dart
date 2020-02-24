import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex/app/modules/home/pages/poke_detail/components/app_bar_detail/app_bar_detail_widget.dart';
import 'package:pokedex/app/modules/home/pages/poke_detail/components/power_info/power_info_widget.dart';
import 'package:pokedex/app/modules/home/pages/poke_detail/poke_detail_controller.dart';
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

class _PokeDetailPageState
    extends ModularState<PokeDetailPage, PokeDetailController> {
  final _pokeApiController = Modular.get<PokeApiController>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: Observer(builder: (_) {
          var pokemon = _pokeApiController.getPokemonAtual;
          return AppBarDetailWidget(
            tween: controller.tween,
            pokemonName: pokemon.name,
            opacity: controller.opacityTitle,
            backgoundColor: _pokeApiController.getColorCurrentPokemon,
          );
        }),
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
          Observer(builder: (_) {
            return PowerInfoWidget(
              listener: controller.listener,
            );
          }),
          Observer(builder: (_) {
            return controller.opacityTitle == 1
                ? Container()
                : ImageWidget(
                    tween: controller.tween,
                    progress: controller.progress,
                    opacity: controller.opacity,
                    getCurrentPokemon: () {
                      return _pokeApiController.getPokemonAtual.id;
                    },
                    index: widget.index,
                    getPokemon: ({int index}) {
                      return _pokeApiController.getPokemon(index: index);
                    },
                    onPageChanged: (int index) {
                      _pokeApiController.setPokemonAtual(index: index);
                    },
                    pokemonLenght: _pokeApiController.pokemonLength,
                    pageController: PageController(
                        initialPage: _pokeApiController.pokeAPI.pokemon
                            .indexOf(_pokeApiController.getPokemonAtual)),
                  );
          }),
        ],
      ),
    );
  }
}
