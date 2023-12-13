import 'package:get/get.dart';

import '../../../domain/usecase/get_weather_information_use_case.dart';
import '../controllers/weather_information_controller.dart';

class WeatherInformationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => WeatherInformationController(Get.find<GetWeatherInformationUseCase>()),
    );
  }
}
