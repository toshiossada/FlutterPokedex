import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_modular/app/modules/home/models/list_pokemon_model.dart';
import 'package:pokedex_modular/app/modules/home/models/pokemon_model.dart';
import 'package:pokedex_modular/app/shared/custom_dio/custom_dio.dart';

import 'interfaces/pokemon_repository_interface.dart';

class PokemonRepository extends Disposable implements IPokemonRepository {
  final CustomDio _dio;

  PokemonRepository(this._dio);
  @override
  void dispose() {}

  @override
  Future<PokemonModel> get(int num) async {
    var response = await _dio.client.get('/pokemon/$num/');

    return PokemonModel.fromJson(response.data);
  }

  @override
  Future<ListPokemonModel> getList() async {
    var response = await _dio.client.get('/pokemon?offset=0&limit=151');

    return ListPokemonModel.fromJson(response.data);
  }
}
