import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_modular/app/modules/home/models/pokedex_model.dart';
import 'package:pokedex_modular/app/modules/home/repositories/interfaces/pokedex_repository_interface.dart';

import 'interfaces/pokedex_service_interface.dart';

class PokedexService extends Disposable implements IPokedexService {
  final IPokedexRepository _pokdexRepository;
  PokedexService(this._pokdexRepository);
  @override
  void dispose() {}

  @override
  Future<PokedexModel> get() {
    return _pokdexRepository.get();
  }
}
