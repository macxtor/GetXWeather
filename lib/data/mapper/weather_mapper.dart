import '../../domain/entities/weather.dart';
import '../dto/weather_dto.dart';

Weather toDomain(WeatherResponseDto dto) {
  return Weather(
    location: dto.location.name,
    country: dto.location.country,
    localTime: dto.location.localtime,
    lastUpdated: dto.current.lastUpdated,
    temperatureCelsius: dto.current.tempC.toString(),
    condition: dto.current.condition.text,
    icon: dto.current.condition.icon,
  );
}
