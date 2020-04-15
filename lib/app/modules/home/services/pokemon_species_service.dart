import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_modular/app/modules/home/models/pokemon_species_model.dart';
import 'package:pokedex_modular/app/modules/home/repositories/interfaces/pokemon_species_repository_interface.dart';

import 'interfaces/pokemon_species_service_interface.dart';

class PokemonSpeciesService extends Disposable
    implements IPokemonSpeciesService {
  final IPokemonSpeciesRepository _pokemonSpeciesRepository;
  PokemonSpeciesService(this._pokemonSpeciesRepository);
  @override
  void dispose() {}

  @override
  Future<PokemonSpecies> get(int id) {
    return _pokemonSpeciesRepository.get(id);
  }
}
