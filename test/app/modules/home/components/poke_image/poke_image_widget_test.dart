import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:pokedex/app/modules/home/shared/components/poke_image/poke_image_widget.dart';

main() {
  testWidgets('PokeImageWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(PokeImageWidget()));
    final textFinder = find.text('PokeImage');
    expect(textFinder, findsOneWidget);
  });
}
