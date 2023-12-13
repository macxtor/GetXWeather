import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:getx_weather/presentation/weather/view/component/weather_error.dart';

void main() {
  testWidgets('WeatherError widget displays the correct error message', (WidgetTester tester) async {
    // Arrange
    const errorMessage = 'Failed to fetch weather data';
    const widget = WeatherError(errorMessage: errorMessage);

    // Act
    await tester.pumpWidget(const MaterialApp(home: Scaffold(body: widget)));

    // Assert
    expect(find.text(errorMessage), findsOneWidget);
  });
}
