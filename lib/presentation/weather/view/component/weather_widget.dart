import 'package:flutter/material.dart';
import 'package:getx_weather/domain/entities/weather.dart';

class WeatherWidget extends StatelessWidget {
  final Weather weather;

  const WeatherWidget({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 10),
        Text(weather.location),
        const SizedBox(height: 10),
        Text(weather.temperatureCelsius),
        const SizedBox(height: 10),
        Text(weather.country),
        const SizedBox(height: 10),
        Text(weather.condition)
      ],
    );
  }
}
