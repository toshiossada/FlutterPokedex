// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  Computed<double> _$percentComputed;

  @override
  double get percent =>
      (_$percentComputed ??= Computed<double>(() => super.percent)).value;

  final _$listPokemonAtom = Atom(name: '_HomeControllerBase.listPokemon');

  @override
  Future<ListPokemonModel> get listPokemon {
    _$listPokemonAtom.context.enforceReadPolicy(_$listPokemonAtom);
    _$listPokemonAtom.reportObserved();
    return super.listPokemon;
  }

  @override
  set listPokemon(Future<ListPokemonModel> value) {
    _$listPokemonAtom.context.conditionallyRunInAction(() {
      super.listPokemon = value;
      _$listPokemonAtom.reportChanged();
    }, _$listPokemonAtom, name: '${_$listPokemonAtom.name}_set');
  }

  final _$loadingAtom = Atom(name: '_HomeControllerBase.loading');

  @override
  bool get loading {
    _$loadingAtom.context.enforceReadPolicy(_$loadingAtom);
    _$loadingAtom.reportObserved();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.context.conditionallyRunInAction(() {
      super.loading = value;
      _$loadingAtom.reportChanged();
    }, _$loadingAtom, name: '${_$loadingAtom.name}_set');
  }

  final _$infoPokemonAtom = Atom(name: '_HomeControllerBase.infoPokemon');

  @override
  ObservableList<PokemonModel> get infoPokemon {
    _$infoPokemonAtom.context.enforceReadPolicy(_$infoPokemonAtom);
    _$infoPokemonAtom.reportObserved();
    return super.infoPokemon;
  }

  @override
  set infoPokemon(ObservableList<PokemonModel> value) {
    _$infoPokemonAtom.context.conditionallyRunInAction(() {
      super.infoPokemon = value;
      _$infoPokemonAtom.reportChanged();
    }, _$infoPokemonAtom, name: '${_$infoPokemonAtom.name}_set');
  }

  final _$getInfoAsyncAction = AsyncAction('getInfo');

  @override
  Future getInfo(ListPokemonModel p) {
    return _$getInfoAsyncAction.run(() => super.getInfo(p));
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  dynamic getList() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.getList();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'listPokemon: ${listPokemon.toString()},loading: ${loading.toString()},infoPokemon: ${infoPokemon.toString()},percent: ${percent.toString()}';
    return '{$string}';
  }
}
