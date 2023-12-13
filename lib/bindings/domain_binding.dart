import 'package:get/get.dart';

import '../domain/usecase/get_weather_information_use_case.dart';

class DomainBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(GetWeatherInformationUseCase(Get.find()));
  }
}
