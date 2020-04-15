import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_modular/app/modules/home/models/evolution_chain_model.dart';
import 'package:pokedex_modular/app/modules/home/repositories/interfaces/evolution_chain_repository_interface.dart';

import '../../../shared/utils/consts_app.dart';
import 'interfaces/evolution_chain_service_interface.dart';

class EvolutionChainService extends Disposable
    implements IEvolutionChainService {
  final IEvolutionChainRepository _evolutionChainRepository;
  EvolutionChainService(this._evolutionChainRepository);
  @override
  void dispose() {}

  @override
  Future<EvolutionChain> get(String url) {
    url = url.replaceAll(Constants.apiUrl, '');

    return _evolutionChainRepository.get(url);
  }
}
