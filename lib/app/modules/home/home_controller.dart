import 'package:mobx/mobx.dart';
import 'package:pokedex_modular/app/modules/home/models/list_pokemon_model.dart';
import 'package:pokedex_modular/app/modules/home/models/pokemon_model.dart';
import 'package:pokedex_modular/app/modules/home/services/interfaces/pokemon_service_interface.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  Future<ListPokemonModel> listPokemon;
  @observable
  bool loading = true;
  @observable
  ObservableList<PokemonModel> infoPokemon = ObservableList<PokemonModel>();
  final IPokemonService _pokemonService;

  ReactionDisposer listPokemonDispose;

  _HomeControllerBase(this._pokemonService) {
    listPokemonDispose = when(
      (_) => listPokemon != null,
      () => listPokemon
          .whenComplete(() => listPokemon.then((value) => getInfo(value))),
    );
  }

  @computed
  double get percent =>
      (infoPokemon.isEmpty) ? 0 : (infoPokemon.length / 151) * 100;

  @action
  getList() {
    loading = true;
    listPokemon = _pokemonService.getList();
  }

  @action
  getInfo(ListPokemonModel p) async {
    for (var item in List<int>.generate(p.results.length, (i) => i + 1)) {
      infoPokemon.add(await _pokemonService.get(item));
    }
    loading = false;
    listPokemonDispose();
  }
}
