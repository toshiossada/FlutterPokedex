import 'package:pokedex_modular/app/modules/home/models/pokemon_species_model.dart';

abstract class IPokemonSpeciesService {
  Future<PokemonSpecies> get(int id);
}
