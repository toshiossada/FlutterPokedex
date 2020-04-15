// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tabs_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TabsController on _TabsControllerBase, Store {
  final _$pokemonAtom = Atom(name: '_TabsControllerBase.pokemon');

  @override
  ObservableFuture<PokemonSpecies> get pokemon {
    _$pokemonAtom.context.enforceReadPolicy(_$pokemonAtom);
    _$pokemonAtom.reportObserved();
    return super.pokemon;
  }

  @override
  set pokemon(ObservableFuture<PokemonSpecies> value) {
    _$pokemonAtom.context.conditionallyRunInAction(() {
      super.pokemon = value;
      _$pokemonAtom.reportChanged();
    }, _$pokemonAtom, name: '${_$pokemonAtom.name}_set');
  }

  final _$_TabsControllerBaseActionController =
      ActionController(name: '_TabsControllerBase');

  @override
  dynamic get(int id) {
    final _$actionInfo = _$_TabsControllerBaseActionController.startAction();
    try {
      return super.get(id);
    } finally {
      _$_TabsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'pokemon: ${pokemon.toString()}';
    return '{$string}';
  }
}
