import 'package:dio/dio.dart';

class ConfigurationParameters {
  static String apiBaseURL = 'https://pokeapi.co/api/v2/';
  static const apiKey = '';
  static const prefsCapturedPokemonsKey = 'capturedPokemons';
  static BaseOptions dioPokeapiClientBaseOptionsConfig = BaseOptions(
    headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    },
    baseUrl: apiBaseURL,
  );
}
