import 'dart:ui';

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:pokedex_modular/app/modules/home/models/pokemon_model.dart';
import 'package:pokedex_modular/app/shared/utils/utils.dart';
import 'package:simple_animations/simple_animations/multi_track_tween.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

part 'poke_detail_controller.g.dart';

class PokeDetailController = _PokeDetailControllerBase
    with _$PokeDetailController;

abstract class _PokeDetailControllerBase with Store {
  _PokeDetailControllerBase();
  @observable
  PokemonModel pokemon = PokemonModel();
  @computed
  Species get getMainType => (pokemon == null)
      ? null
      : pokemon.types.firstWhere((e) => e.slot == 1).type;
  @computed
  Color get getColorCurrentPokemon => (pokemon == null)
      ? Colors.blue
      : Utils.getColorType(type: getMainType.name);
  @observable
  double opacity = 1;
  @observable
  double opacityTitle = 0;
  @observable
  double progress = 0;
  @observable
  double multiple = 1;
  @observable
  MultiTrackTween tween = MultiTrackTween([
    Track("rotation").add(Duration(seconds: 5), Tween(begin: 0.0, end: 6),
        curve: Curves.linear)
  ]);
  List<PokemonModel> lstPokemons;
  PokemonModel getPokemon({int num}) =>
      (lstPokemons == null) ? null : lstPokemons[num];
  setListPokemon(List<PokemonModel> v) => lstPokemons = v;

  @action
  setCurrentPokemon({int num}) {
    pokemon = getPokemon(num: num);
  }

  double interval(double lower, double upper, double progress) {
    assert(lower < upper);
    if (progress > upper)
      return 1;
    else if (progress < lower) return 0;

    return ((progress - lower) / (upper - lower)).clamp(0, 1);
  }

  @action
  listener(SheetState state) {
    progress = state.progress;
    multiple = 1 - interval(0.6, 0.87, progress);
    opacity = multiple;
    opacityTitle = multiple = interval(0.6, 0.87, progress);
  }
}
