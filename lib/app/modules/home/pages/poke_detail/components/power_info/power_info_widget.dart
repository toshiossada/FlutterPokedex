import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class PowerInfoWidget extends StatelessWidget {
  final Function(SheetState controller) listener;

  const PowerInfoWidget({Key key, this.listener}) : super(key: key);
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
          height: MediaQuery.of(context).size.height,
        );
      },
    );
  }
}
