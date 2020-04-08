// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poke_detail_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PokeDetailController on _PokeDetailControllerBase, Store {
  Computed<Species> _$getMainTypeComputed;

  @override
  Species get getMainType =>
      (_$getMainTypeComputed ??= Computed<Species>(() => super.getMainType))
          .value;
  Computed<Color> _$getColorCurrentPokemonComputed;

  @override
  Color get getColorCurrentPokemon => (_$getColorCurrentPokemonComputed ??=
          Computed<Color>(() => super.getColorCurrentPokemon))
      .value;

  final _$pokemonAtom = Atom(name: '_PokeDetailControllerBase.pokemon');

  @override
  PokemonModel get pokemon {
    _$pokemonAtom.context.enforceReadPolicy(_$pokemonAtom);
    _$pokemonAtom.reportObserved();
    return super.pokemon;
  }

  @override
  set pokemon(PokemonModel value) {
    _$pokemonAtom.context.conditionallyRunInAction(() {
      super.pokemon = value;
      _$pokemonAtom.reportChanged();
    }, _$pokemonAtom, name: '${_$pokemonAtom.name}_set');
  }

  final _$opacityAtom = Atom(name: '_PokeDetailControllerBase.opacity');

  @override
  double get opacity {
    _$opacityAtom.context.enforceReadPolicy(_$opacityAtom);
    _$opacityAtom.reportObserved();
    return super.opacity;
  }

  @override
  set opacity(double value) {
    _$opacityAtom.context.conditionallyRunInAction(() {
      super.opacity = value;
      _$opacityAtom.reportChanged();
    }, _$opacityAtom, name: '${_$opacityAtom.name}_set');
  }

  final _$opacityTitleAtom =
      Atom(name: '_PokeDetailControllerBase.opacityTitle');

  @override
  double get opacityTitle {
    _$opacityTitleAtom.context.enforceReadPolicy(_$opacityTitleAtom);
    _$opacityTitleAtom.reportObserved();
    return super.opacityTitle;
  }

  @override
  set opacityTitle(double value) {
    _$opacityTitleAtom.context.conditionallyRunInAction(() {
      super.opacityTitle = value;
      _$opacityTitleAtom.reportChanged();
    }, _$opacityTitleAtom, name: '${_$opacityTitleAtom.name}_set');
  }

  final _$progressAtom = Atom(name: '_PokeDetailControllerBase.progress');

  @override
  double get progress {
    _$progressAtom.context.enforceReadPolicy(_$progressAtom);
    _$progressAtom.reportObserved();
    return super.progress;
  }

  @override
  set progress(double value) {
    _$progressAtom.context.conditionallyRunInAction(() {
      super.progress = value;
      _$progressAtom.reportChanged();
    }, _$progressAtom, name: '${_$progressAtom.name}_set');
  }

  final _$multipleAtom = Atom(name: '_PokeDetailControllerBase.multiple');

  @override
  double get multiple {
    _$multipleAtom.context.enforceReadPolicy(_$multipleAtom);
    _$multipleAtom.reportObserved();
    return super.multiple;
  }

  @override
  set multiple(double value) {
    _$multipleAtom.context.conditionallyRunInAction(() {
      super.multiple = value;
      _$multipleAtom.reportChanged();
    }, _$multipleAtom, name: '${_$multipleAtom.name}_set');
  }

  final _$tweenAtom = Atom(name: '_PokeDetailControllerBase.tween');

  @override
  MultiTrackTween get tween {
    _$tweenAtom.context.enforceReadPolicy(_$tweenAtom);
    _$tweenAtom.reportObserved();
    return super.tween;
  }

  @override
  set tween(MultiTrackTween value) {
    _$tweenAtom.context.conditionallyRunInAction(() {
      super.tween = value;
      _$tweenAtom.reportChanged();
    }, _$tweenAtom, name: '${_$tweenAtom.name}_set');
  }

  final _$_PokeDetailControllerBaseActionController =
      ActionController(name: '_PokeDetailControllerBase');

  @override
  dynamic setCurrentPokemon({int num}) {
    final _$actionInfo =
        _$_PokeDetailControllerBaseActionController.startAction();
    try {
      return super.setCurrentPokemon(num: num);
    } finally {
      _$_PokeDetailControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic listener(SheetState state) {
    final _$actionInfo =
        _$_PokeDetailControllerBaseActionController.startAction();
    try {
      return super.listener(state);
    } finally {
      _$_PokeDetailControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'pokemon: ${pokemon.toString()},opacity: ${opacity.toString()},opacityTitle: ${opacityTitle.toString()},progress: ${progress.toString()},multiple: ${multiple.toString()},tween: ${tween.toString()},getMainType: ${getMainType.toString()},getColorCurrentPokemon: ${getColorCurrentPokemon.toString()}';
    return '{$string}';
  }
}
