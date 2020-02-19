import 'dart:ui';

import 'package:mobx/mobx.dart';
import 'package:pokedex/app/shared/models/pokeapi_model.dart';
import 'package:pokedex/app/shared/models/pokemon_model.dart';
import 'package:pokedex/app/shared/services/pokeapi_service.dart';
import 'package:pokedex/app/shared/utils/utils.dart';
part 'pokeapi_controller.g.dart';

class PokeApiController = _PokeApiControllerBase with _$PokeApiController;

abstract class _PokeApiControllerBase with Store {
  final PokeapiService _pokeapiService;
  _PokeApiControllerBase(this._pokeapiService);

  @observable
  PokeAPI _pokeApi;
  @observable
  Pokemon _currentPokemon;

  @computed
  PokeAPI get pokeAPI => _pokeApi;
  @computed
  List<Pokemon> get pokemon => _pokeApi?.pokemon;
  @computed
  int get pokemonLength => _pokeApi.pokemon.length;
  @computed
  Pokemon get getPokemonAtual => _currentPokemon;
  @computed
  Color get getColorCurrentPokemon =>
      Utils.getColorType(type: _currentPokemon.type[0]);

  getPokemon({int index}) => _pokeApi.pokemon[index];

  @action
  setPokemonAtual({int index}) => _currentPokemon = getPokemon(index: index);

  @action
  fetchPokemonList() {
    try {
      if (_pokeApi == null) {
        _pokeApi = null;
        _pokeapiService.loadPokeApi().then((pokeList) => _pokeApi = pokeList);
      }
    } catch (e) {
      print("Erro ao carregar lista");
      _pokeApi = null;
    }
  }
}
