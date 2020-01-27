import 'package:pokedex/app/shared/services/pokeapi_service.dart';
import 'package:pokedex/app/shared/controllers/pokeapi_controller.dart';
import 'package:pokedex/app/shared/repositories/pokeapi_repository.dart';
import 'package:dio/dio.dart';
import 'package:pokedex/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/app/app_widget.dart';
import 'package:pokedex/app/modules/home/home_module.dart';
import 'package:pokedex/app/shared/custom_dio/custom_dio.dart';

import 'shared/utils/consts_app.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PokeapiService(i.get<PokeApiRepository>())),
        Bind((i) => PokeApiRepository(i.get())),
        Bind((i) => AppController()),
        Bind((i) => PokeApiController(i.get<PokeapiService>())),
        Bind((i) => Dio()),
        Bind((i) => CustomDio(i.get())),
      ];

  @override
  List<Router> get routers => [
        Router('/', module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
