import 'dart:convert';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_modular/app/modules/home/models/pokedex_model.dart';
import 'package:pokedex_modular/app/shared/custom_dio/custom_dio.dart';

import 'interfaces/pokedex_repository_interface.dart';

class PokedexRepository extends Disposable implements IPokedexRepository {
  final CustomDio _dio;

  PokedexRepository(this._dio);
  @override
  void dispose() {}

  @override
  Future<PokedexModel> get() async {
    //Kanto
    var response = await _dio.client.get('/pokedex/2/');

    var responseJson = json.decode(response.data);
    return PokedexModel.fromJson(responseJson);
  }
}
