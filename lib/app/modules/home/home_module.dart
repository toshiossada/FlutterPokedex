import 'package:pokedex_modular/app/modules/home/services/pokemon_species_service.dart';
import 'package:pokedex_modular/app/modules/home/repositories/pokemon_species_repository.dart';
import 'package:pokedex_modular/app/modules/home/pages/poke_detail/components/power_info/tabs/tabs_controller.dart';
import 'package:pokedex_modular/app/modules/home/pages/poke_detail/poke_detail_controller.dart';
import 'package:pokedex_modular/app/modules/home/pages/poke_detail/poke_detail_page.dart';
import 'package:pokedex_modular/app/modules/home/repositories/pokemon_repository.dart';
import 'package:pokedex_modular/app/modules/home/services/pokemon_service.dart';
import 'package:pokedex_modular/app/modules/home/repositories/pokedex_repository.dart';
import 'package:pokedex_modular/app/modules/home/services/pokedex_service.dart';
import 'package:pokedex_modular/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_modular/app/modules/home/home_page.dart';
import 'package:pokedex_modular/app/shared/custom_dio/custom_dio.dart';

import 'repositories/interfaces/pokedex_repository_interface.dart';
import 'repositories/interfaces/pokemon_repository_interface.dart';
import 'repositories/interfaces/pokemon_species_repository_interface.dart';
import 'services/interfaces/pokedex_service_interface.dart';
import 'services/interfaces/pokemon_service_interface.dart';
import 'services/interfaces/pokemon_species_service_interface.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind<IPokemonSpeciesService>((i) =>
            PokemonSpeciesService(Modular.get<IPokemonSpeciesRepository>())),
        Bind<IPokemonSpeciesRepository>(
            (i) => PokemonSpeciesRepository(Modular.get<CustomDio>())),
        Bind((i) => TabsController(Modular.get<IPokemonSpeciesService>())),
        Bind((i) => PokeDetailController()),
        Bind<IPokemonRepository>(
            (i) => PokemonRepository(Modular.get<CustomDio>())),
        Bind<IPokemonService>(
            (i) => PokemonService(i.get<IPokemonRepository>())),
        Bind<IPokedexRepository>((i) => PokedexRepository(Modular.get())),
        Bind<IPokedexService>(
            (i) => PokedexService(i.get<IPokedexRepository>())),
        Bind((i) => HomeController(i.get<IPokemonService>())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
        Router('details/:num',
            child: (_, args) => PokeDetailPage(
                  lstPokemons: args.data,
                  num: int.parse(args.params['num']),
                ))
      ];

  static Inject get to => Inject<HomeModule>.of();
}
