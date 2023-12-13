import 'package:flutter/material.dart';

class WeatherError extends StatelessWidget {
  final String errorMessage;

  const WeatherError({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Text(errorMessage);
  }
}
