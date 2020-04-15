import 'package:flutter/material.dart';
import 'package:pokedex_modular/app/modules/home/pages/poke_detail/components/power_info/tabs/tabs_widget.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

import '../../../../models/pokemon_model.dart';

class PowerInfoWidget extends StatelessWidget {
  final Function(SheetState controller) listener;
  final Color corPokemon;
  final PokemonModel pokemon;

  const PowerInfoWidget({Key key, this.listener, this.corPokemon, this.pokemon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SlidingSheet(
      listener: listener,
      elevation: 0,
      cornerRadius: 30,
      snapSpec: const SnapSpec(
        snap: true,
        snappings: [0.6, 0.89],
        positioning: SnapPositioning.relativeToAvailableSpace,
      ),
      builder: (context, state) {
        return Container(
          height: MediaQuery.of(context).size.height -
              MediaQuery.of(context).size.height * 0.12,
          child: TabsWidget(
            corPokemon: corPokemon,
            pokemon: pokemon
          ),
        );
      },
    );
  }
}
