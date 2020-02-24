// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poke_detail_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PokeDetailController on _PokeDetailBase, Store {
  final _$opacityTitleAtom = Atom(name: '_PokeDetailBase.opacityTitle');

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

  final _$progressAtom = Atom(name: '_PokeDetailBase.progress');

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

  final _$multipleAtom = Atom(name: '_PokeDetailBase.multiple');

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

  final _$tweenAtom = Atom(name: '_PokeDetailBase.tween');

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

  final _$_PokeDetailBaseActionController =
      ActionController(name: '_PokeDetailBase');

  @override
  dynamic listener(SheetState state) {
    final _$actionInfo = _$_PokeDetailBaseActionController.startAction();
    try {
      return super.listener(state);
    } finally {
      _$_PokeDetailBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'opacityTitle: ${opacityTitle.toString()},progress: ${progress.toString()},multiple: ${multiple.toString()},tween: ${tween.toString()}';
    return '{$string}';
  }
}
