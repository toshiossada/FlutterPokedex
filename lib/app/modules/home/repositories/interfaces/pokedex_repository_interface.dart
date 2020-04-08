import 'package:pokedex_modular/app/modules/home/models/pokedex_model.dart';

abstract class IPokedexRepository {
  Future<PokedexModel> get();
}
