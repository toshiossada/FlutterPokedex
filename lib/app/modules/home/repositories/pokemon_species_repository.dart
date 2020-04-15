import 'dart:convert';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_modular/app/modules/home/models/pokemon_species_model.dart';

import '../../../shared/custom_dio/custom_dio.dart';
import 'interfaces/pokemon_species_repository_interface.dart';

class PokemonSpeciesRepository extends Disposable
    implements IPokemonSpeciesRepository {
  final CustomDio _dio;

  PokemonSpeciesRepository(this._dio);
  @override
  void dispose() {}

  @override
  Future<PokemonSpecies> get(int id) async {
    var response = await _dio.client.get('/pokemon-species/$id/');

    return PokemonSpecies.fromMap(response.data);
  }
}
