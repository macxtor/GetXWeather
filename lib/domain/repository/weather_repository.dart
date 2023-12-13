import '../entities/weather.dart';

abstract class WeatherRepository {
  Future<Weather> getWeatherInformation(String location);
}
