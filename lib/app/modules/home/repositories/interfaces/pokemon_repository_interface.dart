import 'package:pokedex_modular/app/modules/home/models/list_pokemon_model.dart';
import 'package:pokedex_modular/app/modules/home/models/pokemon_model.dart';

abstract class IPokemonRepository {
  Future<ListPokemonModel> getList();
  Future<PokemonModel> get(int num);
}
