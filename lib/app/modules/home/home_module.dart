import 'package:pokedex/app/modules/home/pages/poke_detail/poke_detail_controller.dart';
import 'package:pokedex/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'pages/home/home_page.dart';
import 'pages/poke_detail/poke_detail_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PokeDetailController()),
        Bind((i) => HomeController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
        Router('/details/:index',
            child: (_, args) => PokeDetailPage(
                  index: int.parse(args.params['index']),
                )),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
