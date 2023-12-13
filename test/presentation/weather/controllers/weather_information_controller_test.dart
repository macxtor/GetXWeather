import 'package:flutter_test/flutter_test.dart';
import 'package:getx_weather/domain/entities/weather.dart';
import 'package:getx_weather/domain/usecase/get_weather_information_use_case.dart';
import 'package:getx_weather/presentation/weather/controllers/weather_information_controller.dart';
import 'package:mocktail/mocktail.dart';

class MockGetWeatherInformationUseCase extends Mock implements GetWeatherInformationUseCase {}

void main() {
  group('WeatherInformationController', () {
    late WeatherInformationController controller;
    late MockGetWeatherInformationUseCase mockUseCase;

    setUp(() {
      mockUseCase = MockGetWeatherInformationUseCase();
      controller = WeatherInformationController(mockUseCase);
    });

    test('fetchWeatherInformation sets weather data correctly on success', () async {
      // Arrange
      final mockWeather = Weather(
          location: 'London',
          country: 'UK',
          localTime: '12:00 PM',
          lastUpdated: '2023-01-01T12:00:00',
          temperatureCelsius: '25.0',
          condition: 'condition',
          icon: 'icon');
      when(() => mockUseCase.execute(any())).thenAnswer((_) async => mockWeather);

      // Act
      await controller.fetchWeatherInformation("london");

      // Assert
      expect(controller.weather.value, equals(mockWeather));
      expect(controller.isLoading.value, isFalse);
      expect(controller.error.value, isEmpty);
    });

    test('fetchWeatherInformation sets error message on failure', () async {
      // Arrange
      const errorMessage = 'Network error';

      when(() => mockUseCase.execute(any())).thenThrow(errorMessage);

      // Act
      await controller.fetchWeatherInformation("london");

      // Assert
      expect(controller.weather.value, isNull);
      expect(controller.isLoading.value, isFalse);
      expect(controller.error.value, equals('Failed $errorMessage'));
    });
  });
}
