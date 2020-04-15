import 'package:pokedex_modular/app/modules/home/models/pokemon_species_model.dart';

abstract class IPokemonSpeciesRepository {
  Future<PokemonSpecies> get(int id);
}
