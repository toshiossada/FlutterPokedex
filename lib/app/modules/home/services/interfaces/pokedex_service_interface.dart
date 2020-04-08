import 'package:pokedex_modular/app/modules/home/models/pokedex_model.dart';

abstract class IPokedexService {
  Future<PokedexModel> get();
}
