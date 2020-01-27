import 'package:dio/dio.dart';

class CustomInterceptors extends InterceptorsWrapper {
  @override
  Future onRequest(RequestOptions options) async {
    print(
        'URL ${options.baseUrl} - Request[${options.method}] => PATH: ${options.path} : ');
    if (options.data != null) print(options.data.toJson());
    print('Authorization: ${options.headers['Authorization']}');

    // TODO: implement onRequest
    return super.onRequest(options);
  }

  @override
  Future onResponse(Response response) {
    print('Response[${response.statusCode}] => PATH: ${response.request.path}');

    // TODO: implement onResponse
    return super.onResponse(response);
  }

  @override
  Future onError(DioError e) async {
    // TODO: implement onError
    return super.onError(e);
  }
}
