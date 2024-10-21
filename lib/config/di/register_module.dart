import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pokedex/config/config_params.dart';
import 'package:pokedex/core/interceptors/logger_interceptor.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class RegisterModule {
  @preResolve
  Future<SharedPreferences> sharedPreferences() => SharedPreferences.getInstance();

  @Named('pokeapiService')
  Dio getDioClient() {
    final dioClient = Dio(ConfigurationParameters.dioPokeapiClientBaseOptionsConfig);

    dioClient.interceptors.addAll([
      LoggerInterceptor(),
    ]);
    return dioClient;
  }
}
