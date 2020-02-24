import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:pokedex/app/modules/home/shared/poke_background/poke_background_widget.dart';

main() {
  testWidgets('PokeBackgroundWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(PokeBackgroundWidget()));
    final textFinder = find.text('PokeBackground');
    expect(textFinder, findsOneWidget);
  });
}
