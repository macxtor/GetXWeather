import 'package:getx_weather/domain/entities/weather.dart';
import 'package:getx_weather/domain/repository/weather_repository.dart';

class GetWeatherInformationUseCase {
  final WeatherRepository _weatherRepository;

  GetWeatherInformationUseCase(this._weatherRepository);

  Future<Weather> execute(String location) {
    return _weatherRepository.getWeatherInformation(location);
  }
}
