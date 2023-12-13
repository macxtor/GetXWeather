import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:getx_weather/data/dto/weather_dto.dart';

class WeatherApi {
  final Dio _dio;
  static const String _baseUrl = 'https://api.weatherapi.com/v1/current.json';
  static const String _apiKey = 'dc78d52fdb5341d1a29105047231312';

  WeatherApi() : _dio = Dio();

  Future<WeatherResponseDto> getWeatherInformation(String location) async {
    try {
      final response = await _dio.get('$_baseUrl?key=$_apiKey&q=$location');
      final weatherResponseDTO = WeatherResponseDto.fromJson(response.data);
      return weatherResponseDTO;
    } on DioException catch (e) {
      _handleDioError(e);
      throw WeatherApiException('Failed to fetch weather information. $e');
    }
  }
}

void _handleDioError(DioException e) {
  if (e.response != null) {
    if (kDebugMode) {
      print(e.response?.data);
      print(e.response?.headers);
      print(e.response?.requestOptions);
    }
  } else {
    if (kDebugMode) {
      print(e.requestOptions);
      print(e.message);
    }
  }
}

class WeatherApiException implements Exception {
  final String message;

  WeatherApiException(this.message);

  @override
  String toString() => 'WeatherApiException: $message';
}
