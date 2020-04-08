import 'package:dio/dio.dart';

import 'interceptor.dart';

class CustomDio {
  final Dio client;

  CustomDio(this.client) {
    client.interceptors.add(CustomInterceptors());
  }
}
