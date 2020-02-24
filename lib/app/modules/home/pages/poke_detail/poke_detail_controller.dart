import 'package:flutter/animation.dart';
import 'package:mobx/mobx.dart';
import 'package:simple_animations/simple_animations/multi_track_tween.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

part 'poke_detail_controller.g.dart';

class PokeDetailController = _PokeDetailBase with _$PokeDetailController;

abstract class _PokeDetailBase with Store {
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
    multiple = 1 - interval(0, 0.7, progress);
    opacity = multiple;
    opacityTitle = multiple = interval(0, 0.7, progress);
  }
}
