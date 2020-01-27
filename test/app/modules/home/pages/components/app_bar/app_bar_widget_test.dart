import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:pokedex/app/modules/home/pages/home/components/body/app_bar/app_bar_widget.dart';

main() {
  testWidgets('AppBarWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(AppBarWidget()));
    final textFinder = find.text('AppBar');
    expect(textFinder, findsOneWidget);
  });
}
