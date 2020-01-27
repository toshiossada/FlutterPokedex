import 'package:dio/dio.dart';
import 'package:pokedex/app/shared/utils/consts_app.dart';

import 'interceptor.dart';

class CustomDio {
  final Dio client;

  CustomDio(this.client) {
    client.options = BaseOptions();
    client.options.baseUrl = '${ConstsApp.apiUrl}';

    client.interceptors.add(CustomInterceptors());

    client.options.connectTimeout = 25000;
  }
}
