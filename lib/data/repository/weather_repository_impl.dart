import 'package:getx_weather/data/mapper/weather_mapper.dart';

import '../../core/failure.dart';
import '../../domain/entities/weather.dart';
import '../../domain/repository/weather_repository.dart';
import '../providers/network/weather_api.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherApi _weatherApi;

  WeatherRepositoryImpl(this._weatherApi);

  @override
  Future<Weather> getWeatherInformation(String location) async {
    try {
      final weatherDto = await _weatherApi.getWeatherInformation(location);
      return toDomain(weatherDto);
    } catch (e) {
      return Future.error(Failure("Unexpected error occurred: $e"));
    }
  }
}
