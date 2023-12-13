import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/weather_information_controller.dart';
import 'component/weather_error.dart';
import 'component/weather_widget.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WeatherInformationController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          title: const Text('GetX Weather App'),
        ),
        body: Obx(() {
          if (controller.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          } else if (controller.error.value.isNotEmpty) {
            return WeatherError(errorMessage: controller.error.value);
          } else if (controller.weather.value != null) {
            return WeatherWidget(weather: controller.weather.value!);
          } else {
            return const Text('Weather information not available.');
          }
        }),
      ),
    );
  }
}
