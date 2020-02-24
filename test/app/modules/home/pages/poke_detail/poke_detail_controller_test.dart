import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:pokedex/app/modules/home/pages/poke_detail/poke_detail_controller.dart';
import 'package:pokedex/app/modules/home/home_module.dart';

void main() {
  initModule(HomeModule());
  PokeDetailController pokedetail;

  setUp(() {
    pokedetail = HomeModule.to.get<PokeDetailController>();
  });

  group('PokeDetailController Test', () {
    test("First Test", () {
      expect(pokedetail, isInstanceOf<PokeDetailController>());
    });

    test("Set Value", () {
      expect(pokedetail.value, equals(0));
      pokedetail.increment();
      expect(pokedetail.value, equals(1));
    });
  });
}
