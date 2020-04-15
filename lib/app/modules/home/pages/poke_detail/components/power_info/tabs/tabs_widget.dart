import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';
import 'package:pokedex_modular/app/modules/home/models/pokemon_species_model.dart';

import 'package:pokedex_modular/app/modules/home/pages/poke_detail/components/power_info/tabs/about/about_widget.dart';
import 'package:pokedex_modular/app/modules/home/pages/poke_detail/components/power_info/tabs/evolution/evolution_widget.dart';
import 'package:pokedex_modular/app/modules/home/pages/poke_detail/components/power_info/tabs/status/status_widget.dart';
import 'package:pokedex_modular/app/modules/home/pages/poke_detail/components/power_info/tabs/tabs_controller.dart';

import '../../../../../models/pokemon_model.dart';

class TabsWidget extends StatefulWidget {
  final Color corPokemon;
  final PokemonModel pokemon;

  const TabsWidget({
    Key key,
    this.corPokemon,
    this.pokemon,
  }) : super(key: key);
  @override
  _TabsWidgetState createState() => _TabsWidgetState();
}

class _TabsWidgetState extends ModularState<TabsWidget, TabsController>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    controller.get(widget.pokemon.id);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: TabBar(
            controller: _tabController,
            labelStyle: TextStyle(
              fontWeight: FontWeight.w700,
            ),
            indicatorSize: TabBarIndicatorSize.label,
            labelColor: widget.corPokemon,
            unselectedLabelColor: Color(0xff5f6368),
            indicator: MD2Indicator(
                indicatorHeight: 3,
                indicatorColor: widget.corPokemon,
                indicatorSize: MD2IndicatorSize.normal),
            isScrollable: true,
            tabs: <Widget>[
              Tab(
                text: 'Sobre',
              ),
              Tab(
                text: 'Evolução',
              ),
              Tab(
                text: 'Status',
              ),
            ],
          ),
        ),
      ),
      body: Observer(builder: (_) {
        return FutureBuilder<PokemonSpecies>(
            future: controller.pokemon,
            builder: (context, snapshot) {
              if (snapshot.data == null || !snapshot.hasData)
                return CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(widget.corPokemon),
                );
              else
                return TabBarView(
                  controller: _tabController,
                  children: [
                    AboutWidget(
                      weight: widget.pokemon.weight,
                      height: widget.pokemon.height,
                      description: snapshot.data.flavorTextEntries
                          .where((item) => item.language.name == 'en')
                          .first
                          .flavorText,
                    ),
                    EvolutionWidget(
                      url: snapshot.data.evolutionChain.url,
                      corPokemon: widget.corPokemon,
                    ),
                    StatusWidget(),
                  ],
                );
            });
      }),
    );
  }
}
