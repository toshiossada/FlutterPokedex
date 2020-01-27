import 'package:pokedex/app/shared/models/pokeapi_model.dart';

abstract class IPokeApiRepository {
  Future<PokeAPI> loadPokeApi();
}
