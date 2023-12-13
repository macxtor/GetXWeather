import 'package:flutter_test/flutter_test.dart';
import 'package:getx_weather/core/failure.dart';
import 'package:getx_weather/data/providers/network/weather_api.dart';
import 'package:getx_weather/data/repository/weather_repository_impl.dart';
import 'package:getx_weather/domain/entities/weather.dart';
import 'package:mocktail/mocktail.dart';

import '../mock_data.dart';

class MockNetworkApi extends Mock implements WeatherApi {}

void main() {
  late WeatherRepositoryImpl weatherRepository;
  late MockNetworkApi mockNetworkApi;

  setUp(() {
    mockNetworkApi = MockNetworkApi();
    weatherRepository = WeatherRepositoryImpl(mockNetworkApi);
  });

  test('getWeatherInformation returns valid weather information when network request is successful', () async {
    //arrange
    var location = "london";
    when(() => mockNetworkApi.getWeatherInformation(location)).thenAnswer((_) async => mockWeatherResponseDto);

    //act
    var result = await weatherRepository.getWeatherInformation(location);

    //assert
    verify(() => mockNetworkApi.getWeatherInformation(location)).called(1);
    expect(result, isA<Weather>());
  });

  test('getWeatherInformation handles error and returns Failure', () async {
    // Arrange
    var location = "london";
    when(() => mockNetworkApi.getWeatherInformation(location)).thenThrow(Exception());

    // Act + Assert
    await expectLater(() => weatherRepository.getWeatherInformation(location), throwsA(isA<Failure>()));

    // Additional assertions outside the expect block if needed
    verify(() => mockNetworkApi.getWeatherInformation(location)).called(1);
  });
}
