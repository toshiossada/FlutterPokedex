import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import 'package:pokedex_modular/app/modules/home/models/evolution_chain_model.dart';
import 'package:pokedex_modular/app/modules/home/pages/poke_detail/components/power_info/tabs/evolution/evolution_controller.dart';

class EvolutionWidget extends StatefulWidget {
  final String url;
  final Color corPokemon;

  const EvolutionWidget({
    Key key,
    this.url,
    this.corPokemon,
  }) : super(key: key);
  @override
  _EvolutionWidgetState createState() => _EvolutionWidgetState();
}

class _EvolutionWidgetState
    extends ModularState<EvolutionWidget, EvolutionController> {
  @override
  Widget build(BuildContext context) {
    controller.get(widget.url);
    return FutureBuilder<EvolutionChain>(
      future: controller.evolution,
      builder: (_, snapshot) {
        if (snapshot.data == null || !snapshot.hasData)
          return CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation(widget.corPokemon),
          );
        else {
          controller.setEvolutions(snapshot.data.chain);
          return Observer(builder: (_) {
            if (controller.listEvolutions.status == FutureStatus.pending)
              return CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(widget.corPokemon),
              );
            return FutureBuilder<List<Widget>>(
              future: controller.listEvolutions,
              builder: (_, s) {
                if (s.data == null || !s.hasData)
                  return CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(widget.corPokemon),
                  );
                return ListView.builder(
                  itemCount: s.data.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: const EdgeInsets.all(20),
                      child: Center(
                        child: s.data[index],
                      ),
                    );
                  },
                );
              },
            );
          });
        }
      },
    );
  }
}
