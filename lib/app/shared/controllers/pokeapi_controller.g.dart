// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokeapi_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PokeApiController on _PokeApiControllerBase, Store {
  Computed<PokeAPI> _$pokeAPIComputed;

  @override
  PokeAPI get pokeAPI =>
      (_$pokeAPIComputed ??= Computed<PokeAPI>(() => super.pokeAPI)).value;
  Computed<List<Pokemon>> _$pokemonComputed;

  @override
  List<Pokemon> get pokemon =>
      (_$pokemonComputed ??= Computed<List<Pokemon>>(() => super.pokemon))
          .value;
  Computed<int> _$pokemonLengthComputed;

  @override
  int get pokemonLength =>
      (_$pokemonLengthComputed ??= Computed<int>(() => super.pokemonLength))
          .value;
  Computed<Pokemon> _$getPokemonAtualComputed;

  @override
  Pokemon get getPokemonAtual => (_$getPokemonAtualComputed ??=
          Computed<Pokemon>(() => super.getPokemonAtual))
      .value;
  Computed<dynamic> _$getColorCurrentPokemonComputed;

  @override
  dynamic get getColorCurrentPokemon => (_$getColorCurrentPokemonComputed ??=
          Computed<dynamic>(() => super.getColorCurrentPokemon))
      .value;

  final _$_pokeApiAtom = Atom(name: '_PokeApiControllerBase._pokeApi');

  @override
  PokeAPI get _pokeApi {
    _$_pokeApiAtom.context.enforceReadPolicy(_$_pokeApiAtom);
    _$_pokeApiAtom.reportObserved();
    return super._pokeApi;
  }

  @override
  set _pokeApi(PokeAPI value) {
    _$_pokeApiAtom.context.conditionallyRunInAction(() {
      super._pokeApi = value;
      _$_pokeApiAtom.reportChanged();
    }, _$_pokeApiAtom, name: '${_$_pokeApiAtom.name}_set');
  }

  final _$_currentPokemonAtom =
      Atom(name: '_PokeApiControllerBase._currentPokemon');

  @override
  Pokemon get _currentPokemon {
    _$_currentPokemonAtom.context.enforceReadPolicy(_$_currentPokemonAtom);
    _$_currentPokemonAtom.reportObserved();
    return super._currentPokemon;
  }

  @override
  set _currentPokemon(Pokemon value) {
    _$_currentPokemonAtom.context.conditionallyRunInAction(() {
      super._currentPokemon = value;
      _$_currentPokemonAtom.reportChanged();
    }, _$_currentPokemonAtom, name: '${_$_currentPokemonAtom.name}_set');
  }

  final _$_PokeApiControllerBaseActionController =
      ActionController(name: '_PokeApiControllerBase');

  @override
  dynamic getPokemon({int index}) {
    final _$actionInfo = _$_PokeApiControllerBaseActionController.startAction();
    try {
      return super.getPokemon(index: index);
    } finally {
      _$_PokeApiControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPokemonAtual({int index}) {
    final _$actionInfo = _$_PokeApiControllerBaseActionController.startAction();
    try {
      return super.setPokemonAtual(index: index);
    } finally {
      _$_PokeApiControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic fetchPokemonList() {
    final _$actionInfo = _$_PokeApiControllerBaseActionController.startAction();
    try {
      return super.fetchPokemonList();
    } finally {
      _$_PokeApiControllerBaseActionController.endAction(_$actionInfo);
    }
  }
}
