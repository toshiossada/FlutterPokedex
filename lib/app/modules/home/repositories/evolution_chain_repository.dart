import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_modular/app/modules/home/models/evolution_chain_model.dart';

import '../../../shared/custom_dio/custom_dio.dart';
import 'interfaces/evolution_chain_repository_interface.dart';

class EvolutionChainRepository extends Disposable
    implements IEvolutionChainRepository {
  final CustomDio _dio;

  EvolutionChainRepository(this._dio);

  @override
  void dispose() {}

  @override
  Future<EvolutionChain> get(String url) async {
    var response = await _dio.client.get(url);

    return EvolutionChain.fromMap(response.data);
  }
}
