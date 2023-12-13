import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:getx_weather/domain/entities/weather.dart';
import 'package:getx_weather/presentation/weather/view/component/weather_widget.dart';

void main() {
  testWidgets('WeatherWidget displays the correct weather information', (WidgetTester tester) async {
    // Arrange
    final weather = Weather(
      location: 'London',
      temperatureCelsius: '25.0',
      country: 'UK',
      condition: 'Clear',
      localTime: 'localtime',
      lastUpdated: 'lastUpdated',
      icon: 'icon',
    );

    final widget = MaterialApp(
      home: Scaffold(
        body: WeatherWidget(weather: weather),
      ),
    );

    // Act
    await tester.pumpWidget(widget);

    // Assert
    expect(find.text(weather.location), findsOneWidget);
    expect(find.text(weather.temperatureCelsius), findsOneWidget);
    expect(find.text(weather.country), findsOneWidget);
    expect(find.text(weather.condition), findsOneWidget);
  });
}
