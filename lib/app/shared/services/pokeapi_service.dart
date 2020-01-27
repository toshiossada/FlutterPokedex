import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex/app/shared/models/pokeapi_model.dart';
import 'package:pokedex/app/shared/repositories/pokeapi_repository.dart';

import 'interfaces/ipokeapi_service.dart';

class PokeapiService extends Disposable implements IPokeapiService {
  final PokeApiRepository _pokeapiRepository;
  PokeapiService(this._pokeapiRepository);

  //dispose will be called automatically
  @override
  void dispose() {}

  @override
  Future<PokeAPI> loadPokeApi() {
    return _pokeapiRepository.loadPokeApi();
  }
}
