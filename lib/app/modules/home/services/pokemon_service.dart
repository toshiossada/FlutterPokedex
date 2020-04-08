import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_modular/app/modules/home/models/pokemon_model.dart';
import 'package:pokedex_modular/app/modules/home/models/list_pokemon_model.dart';
import 'package:pokedex_modular/app/modules/home/repositories/interfaces/pokemon_repository_interface.dart';

import 'interfaces/pokemon_service_interface.dart';

class PokemonService extends Disposable implements IPokemonService {
  final IPokemonRepository _pokemonRepository;
  PokemonService(this._pokemonRepository);
  @override
  void dispose() {}

  @override
  Future<PokemonModel> get(int num) {
    return _pokemonRepository.get(num);
  }

  @override
  Future<ListPokemonModel> getList() {
    return _pokemonRepository.getList();
  }
}
