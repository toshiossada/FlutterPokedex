import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex/app/modules/home/pages/poke_detail/components/app_bar_detail/app_bar_detail_widget.dart';
import 'package:pokedex/app/modules/home/pages/poke_detail/components/poke_detail_header/poke_detail_header_widget.dart';
import 'package:pokedex/app/modules/home/pages/poke_detail/components/power_info/power_info_widget.dart';
import 'package:pokedex/app/modules/home/pages/poke_detail/poke_detail_controller.dart';
import 'package:pokedex/app/shared/controllers/pokeapi_controller.dart';
import 'package:pokedex/app/shared/utils/utils.dart';

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
    return Observer(builder: (_) {
      return Scaffold(
        body: Stack(
          children: <Widget>[
            AnimatedContainer(
              color: _pokeApiController.getColorCurrentPokemon,
              duration: Duration(microseconds: 300),
            ),
            AppBarDetailWidget(
              tween: controller.tween,
              opacity: controller.opacityTitle,
            ),
            PokeDetailHeaderWidget(
              positionTop: (MediaQuery.of(context).size.height * 0.12) -
                  controller.progress *
                      MediaQuery.of(context).size.height *
                      0.06,
              positionLeft: 20 +
                  controller.progress *
                      MediaQuery.of(context).size.height *
                      0.06,
              name: _pokeApiController.getPokemonAtual.name,
              nameFontSize: 30 -
                  controller.progress *
                      MediaQuery.of(context).size.height *
                      0.011,
              num: _pokeApiController.getPokemonAtual.num,
              type: _pokeApiController.getPokemonAtual.type,
            ),
            PowerInfoWidget(
              listener: controller.listener,
            ),
            controller.opacityTitle == 1
                ? Container()
                : ImageWidget(
                    paddingTop: (MediaQuery.of(context).size.height * 0.25) -
                        controller.progress *
                            MediaQuery.of(context).size.height *
                            0.1,
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
                            .indexOf(_pokeApiController.getPokemonAtual),
                        viewportFraction: 0.5),
                  ),
          ],
        ),
      );
    });
  }
}
