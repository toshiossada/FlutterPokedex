import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:pokedex/app/modules/home/pages/home/components/body/pokemon_list/card_item/card_item_widget.dart';

main() {
  testWidgets('CardItemWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(CardItemWidget()));
    final textFinder = find.text('CardItem');
    expect(textFinder, findsOneWidget);
  });
}
