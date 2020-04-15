// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evolution_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$EvolutionController on _EvolutionControllerBase, Store {
  final _$evolutionAtom = Atom(name: '_EvolutionControllerBase.evolution');

  @override
  ObservableFuture<EvolutionChain> get evolution {
    _$evolutionAtom.context.enforceReadPolicy(_$evolutionAtom);
    _$evolutionAtom.reportObserved();
    return super.evolution;
  }

  @override
  set evolution(ObservableFuture<EvolutionChain> value) {
    _$evolutionAtom.context.conditionallyRunInAction(() {
      super.evolution = value;
      _$evolutionAtom.reportChanged();
    }, _$evolutionAtom, name: '${_$evolutionAtom.name}_set');
  }

  final _$listEvolutionsAtom =
      Atom(name: '_EvolutionControllerBase.listEvolutions');

  @override
  ObservableFuture<List<Widget>> get listEvolutions {
    _$listEvolutionsAtom.context.enforceReadPolicy(_$listEvolutionsAtom);
    _$listEvolutionsAtom.reportObserved();
    return super.listEvolutions;
  }

  @override
  set listEvolutions(ObservableFuture<List<Widget>> value) {
    _$listEvolutionsAtom.context.conditionallyRunInAction(() {
      super.listEvolutions = value;
      _$listEvolutionsAtom.reportChanged();
    }, _$listEvolutionsAtom, name: '${_$listEvolutionsAtom.name}_set');
  }

  final _$_EvolutionControllerBaseActionController =
      ActionController(name: '_EvolutionControllerBase');

  @override
  dynamic get(String url) {
    final _$actionInfo =
        _$_EvolutionControllerBaseActionController.startAction();
    try {
      return super.get(url);
    } finally {
      _$_EvolutionControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setEvolutions(Chain chain) {
    final _$actionInfo =
        _$_EvolutionControllerBaseActionController.startAction();
    try {
      return super.setEvolutions(chain);
    } finally {
      _$_EvolutionControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'evolution: ${evolution.toString()},listEvolutions: ${listEvolutions.toString()}';
    return '{$string}';
  }
}
