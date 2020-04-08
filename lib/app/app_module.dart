import 'package:dio/dio.dart';
import 'package:pokedex_modular/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_modular/app/app_widget.dart';
import 'package:pokedex_modular/app/modules/home/home_module.dart';

import 'shared/custom_dio/custom_dio.dart';
import 'shared/utils/consts_app.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => Dio(
              BaseOptions(
                baseUrl: Constants.apiUrl,
                connectTimeout: 25000,
              ),
            )),
        Bind((i) => CustomDio(i.get<Dio>())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
