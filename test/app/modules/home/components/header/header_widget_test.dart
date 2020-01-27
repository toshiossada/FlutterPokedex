import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:pokedex/app/modules/home/pages/home/components/header/header_widget.dart';

main() {
  testWidgets('HeaderWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(HeaderWidget()));
    final textFinder = find.text('Header');
    expect(textFinder, findsOneWidget);
  });
}
