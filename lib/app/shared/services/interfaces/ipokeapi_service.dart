import 'package:pokedex/app/shared/models/pokeapi_model.dart';

abstract class IPokeapiService {
  Future<PokeAPI> loadPokeApi();
}
