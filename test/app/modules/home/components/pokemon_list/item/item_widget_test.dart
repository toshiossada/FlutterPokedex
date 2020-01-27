import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:pokedex/app/modules/home/pages/home/components/body/pokemon_list/card_item/item/item_widget.dart';

main() {
  testWidgets('ItemWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(ItemWidget()));
    final textFinder = find.text('Item');
    expect(textFinder, findsOneWidget);
  });
}
