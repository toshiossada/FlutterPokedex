import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class PowerInfoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlidingSheet(
      elevation: 0,
      cornerRadius: 16,
      snapSpec: const SnapSpec(
        snap: true,
        snappings: [0.7, 1],
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
