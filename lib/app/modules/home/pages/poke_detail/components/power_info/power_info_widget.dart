import 'package:flutter/material.dart';
import 'package:pokedex/app/modules/home/pages/poke_detail/components/about/about_widget.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class PowerInfoWidget extends StatelessWidget {
  final Function(SheetState controller) listener;
  final Color corPokemon;

  const PowerInfoWidget({Key key, this.listener, this.corPokemon})
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
          child: AboutWidget(
            corPokemon: corPokemon,
          ),
        );
      },
    );
  }
}
