import 'package:flutter/widgets.dart';
import 'package:mobx/mobx.dart';
import 'package:pokedex_modular/app/modules/home/models/evolution_chain_model.dart';
import 'package:pokedex_modular/app/modules/home/models/pokemon_species_model.dart';
import 'package:pokedex_modular/app/modules/home/services/interfaces/evolution_chain_service_interface.dart';
import 'package:pokedex_modular/app/modules/home/services/interfaces/pokemon_species_service_interface.dart';

import '../../../../../../components/poke_image/poke_image_widget.dart';

part 'evolution_controller.g.dart';

class EvolutionController = _EvolutionControllerBase with _$EvolutionController;

abstract class _EvolutionControllerBase with Store {
  final IEvolutionChainService _evolutionChainService;
  final IPokemonSpeciesService _pokemonSpeciesService;
  _EvolutionControllerBase(
      this._evolutionChainService, this._pokemonSpeciesService);
  @observable
  ObservableFuture<EvolutionChain> evolution;
  @observable
  ObservableFuture<List<Widget>> listEvolutions;
  @action
  get(String url) {
    evolution = _evolutionChainService.get(url).asObservable();
  }

  Future<PokemonSpecies> getPokemon(String url) async {
    return await _pokemonSpeciesService.getByUrl(url);
  }

  Future<List<int>> getEvolucao(List<Chain> pokemon) async {
    List<int> _list = [];
    if (pokemon != null && pokemon.length > 0) {
      for (var f in pokemon) {
        if (f.evolvesTo.length > 0)
          _list.addAll(await getEvolucao(f.evolvesTo));
        var p = await getPokemon(f.species.url);
        _list.add(p.id);
      }
    }

    return _list;
  }

  Future<List<Widget>> getPokemonEvolution(Chain chain) async {
    List<Widget> evolution = List<Widget>();
    var p = await getPokemon(chain.species.url);
    evolution.add(PokeImageWidget(
      num: p.id.toString(),
      height: 100,
      width: 100,
    ));
    var c = await getEvolucao(chain.evolvesTo)
      ..sort();
    for (var item in c) {
      evolution.add(PokeImageWidget(
        num: item.toString(),
        height: 100,
        width: 100,
      ));
    }
    return evolution;
  }

  @action
  setEvolutions(Chain chain) {
    listEvolutions = null;
    listEvolutions = getPokemonEvolution(chain).asObservable();
  }
}
