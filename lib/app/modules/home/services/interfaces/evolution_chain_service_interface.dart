import 'package:pokedex_modular/app/modules/home/models/evolution_chain_model.dart';

abstract class IEvolutionChainService {
  Future<EvolutionChain> get(String url);
}
