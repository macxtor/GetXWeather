import 'current_dto.dart';
import 'location_dto.dart';

class WeatherResponseDto {
  final LocationDto location;
  final CurrentDto current;

  WeatherResponseDto({required this.location, required this.current});

  factory WeatherResponseDto.fromJson(Map<String, dynamic> json) {
    return WeatherResponseDto(
      location: LocationDto.fromJson(json['location']),
      current: CurrentDto.fromJson(json['current']),
    );
  }
}
