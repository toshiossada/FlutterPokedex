import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_modular/app/modules/home/models/pokemon_model.dart';
import 'package:pokedex_modular/app/modules/home/pages/poke_detail/poke_detail_controller.dart';

import 'components/app_bar_detail/app_bar_detail_widget.dart';
import 'components/poke_detail_header/poke_detail_header_widget.dart';
import 'components/power_info/power_info_widget.dart';
import 'components/image_detail/image_detail_widget.dart';

class PokeDetailPage extends StatefulWidget {
  final String title;
  final List<PokemonModel> lstPokemons;
  final int num;
  const PokeDetailPage(
      {Key key, this.title = "PokeDetail", this.lstPokemons, this.num})
      : super(key: key);

  @override
  _PokeDetailPageState createState() => _PokeDetailPageState();
}

class _PokeDetailPageState
    extends ModularState<PokeDetailPage, PokeDetailController> {
  @override
  void initState() {
    super.initState();
    controller.setListPokemon(widget.lstPokemons);
    controller.setCurrentPokemon(num: widget.num);
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Scaffold(
        body: Stack(
          children: <Widget>[
            AnimatedContainer(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    controller.getColorCurrentPokemon,
                    controller.getColorCurrentPokemon.withOpacity(0.7),
                  ],
                ),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
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
              name: controller.pokemon?.name ?? '',
              nameFontSize: 30 -
                  controller.progress *
                      MediaQuery.of(context).size.height *
                      0.011,
              num: controller.pokemon?.id,
              type: controller.pokemon?.types,
            ),
            PowerInfoWidget(
              listener: controller.listener,
              corPokemon: controller.getColorCurrentPokemon,
            ),
            controller.opacityTitle == 1
                ? Container()
                : ImageDetailWidget(
                    paddingTop: (MediaQuery.of(context).size.height * 0.25) -
                        controller.progress *
                            MediaQuery.of(context).size.height *
                            0.1,
                    tween: controller.tween,
                    progress: controller.progress,
                    opacity: controller.opacity,
                    getCurrentPokemon: () => controller.pokemon?.id,
                    index: controller.pokemon?.id ?? 1,
                    pokemons: widget.lstPokemons,
                    onPageChanged: (int index) =>
                        controller.setCurrentPokemon(num: index),
                    pokemonLenght: widget.lstPokemons.length,
                    pageController: PageController(
                        initialPage: controller.pokemon.id - 1,
                        viewportFraction: 0.5),
                  ),
          ],
        ),
      );
    });
  }
}
