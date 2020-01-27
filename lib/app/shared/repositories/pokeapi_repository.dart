import 'dart:convert';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex/app/shared/custom_dio/custom_dio.dart';
import 'package:pokedex/app/shared/models/pokeapi_model.dart';

import 'interfaces/ipokeapi_repository.dart';

class PokeApiRepository extends Disposable implements IPokeApiRepository {
  final CustomDio dio;

  PokeApiRepository(this.dio);

  Future<PokeAPI> loadPokeApi() async {
    var response = await dio.client.get('/pokedex.json');
    try {
      // var results = (response.data["results"] as List).map((i) {
      //   return new PokeAPI.fromJson(i);
      // }).toList();
      var responseJson = json.decode(response.data);
      return PokeAPI.fromJson(responseJson);
    } catch (e) {
      return null;
    }
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
