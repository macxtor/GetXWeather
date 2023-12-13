import 'package:flutter_test/flutter_test.dart';
import 'package:getx_weather/domain/entities/weather.dart';
import 'package:getx_weather/domain/repository/weather_repository.dart';
import 'package:getx_weather/domain/usecase/get_weather_information_use_case.dart';
import 'package:mocktail/mocktail.dart';

class MockWeatherRepository extends Mock implements WeatherRepository {}

class MockWeather extends Mock implements Weather {}

void main() {
  test('GetWeatherInformation executes successfully', () async {
    final mockRepository = MockWeatherRepository();
    final mockWeather = MockWeather();
    const location = "location";
    when(() => mockRepository.getWeatherInformation(location)).thenAnswer((_) async => mockWeather);
    final getWeatherTopNewsUseCase = GetWeatherInformationUseCase(mockRepository);

    final result = await getWeatherTopNewsUseCase.execute(location);

    expect(result, isA<Weather>());
  });

  test('GetWeatherInformation handles failed repository response', () async {
    const location = "location";
    final mockRepository = MockWeatherRepository();
    final getWeatherInformationUseCase = GetWeatherInformationUseCase(mockRepository);

    when(() => mockRepository.getWeatherInformation(location))
        .thenAnswer((_) async => throw Exception('Failed to load news'));

    expect(() async => await getWeatherInformationUseCase.execute(location), throwsException);
  });
}