import 'package:mobx/mobx.dart';
import 'package:pokedex_modular/app/modules/home/models/pokemon_species_model.dart';
import 'package:pokedex_modular/app/modules/home/services/interfaces/pokemon_species_service_interface.dart';

part 'tabs_controller.g.dart';

class TabsController = _TabsControllerBase with _$TabsController;

abstract class _TabsControllerBase with Store {
  final IPokemonSpeciesService _pokemonSpeciesService;
  _TabsControllerBase(this._pokemonSpeciesService);
  @observable
  ObservableFuture<PokemonSpecies> pokemon;

  @action
  get(int id) {
    pokemon = (_pokemonSpeciesService.get(id)).asObservable();
  }
}
