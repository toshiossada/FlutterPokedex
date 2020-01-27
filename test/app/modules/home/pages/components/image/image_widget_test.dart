import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:pokedex/app/modules/home/pages/poke_detail/components/image/image_widget.dart';

main() {
  testWidgets('ImageWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(ImageWidget()));
    final textFinder = find.text('Image');
    expect(textFinder, findsOneWidget);
  });
}
