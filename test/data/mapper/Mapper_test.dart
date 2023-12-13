import 'package:flutter_test/flutter_test.dart';
import 'package:getx_weather/data/dto/condition_dto.dart';
import 'package:getx_weather/data/dto/current_dto.dart';
import 'package:getx_weather/data/dto/location_dto.dart';
import 'package:getx_weather/data/dto/weather_dto.dart';
import 'package:getx_weather/data/mapper/weather_mapper.dart';
import 'package:getx_weather/domain/entities/weather.dart';

void main() {
  group('Weather toDomain', () {
    test('should convert WeatherResponseDto to Weather', () {
      // Arrange
      var dto = WeatherResponseDto(
        location: LocationDto(region: 'region', name: 'TestCity', country: 'TestCountry', localtime: 'TestTime'),
        current: CurrentDto(
          lastUpdated: 'TestLastUpdated',
          tempC: 25.0,
          condition: ConditionDto(text: 'TestCondition', icon: 'TestIcon'),
          isDay: 1,
        ),
      );

      // Act
      var result = toDomain(dto);

      // Assert
      expect(result, isA<Weather>());
      expect(result.location, equals('TestCity'));
      expect(result.country, equals('TestCountry'));
      expect(result.localTime, equals('TestTime'));
      expect(result.lastUpdated, equals('TestLastUpdated'));
      expect(result.temperatureCelsius, equals('25.0')); // Convert the double to String
      expect(result.condition, isA<Condition>());
      expect(result.condition.text, equals('TestCondition'));
      expect(result.condition.icon, equals('TestIcon'));
    });
  });
}
