import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:pokedex/app/modules/home/pages/home/components/body/pokemon_list/card_item/item/poke_item/poke_item_widget.dart';

main() {
  testWidgets('PokeItemWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(PokeItemWidget()));
    final textFinder = find.text('PokeItem');
    expect(textFinder, findsOneWidget);
  });
}
