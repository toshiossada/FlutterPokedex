import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:pokedex/app/modules/home/pages/home/components/body/pokemon_list/pokemon_list_widget.dart';

main() {
  testWidgets('PokemonListWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(PokemonListWidget()));
    final textFinder = find.text('PokemonList');
    expect(textFinder, findsOneWidget);
  });
}
