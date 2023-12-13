import 'package:get/get.dart';

import '../data/providers/network/weather_api.dart';
import '../data/repository/weather_repository_impl.dart';
import '../domain/repository/weather_repository.dart';

class DataBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(WeatherApi());
    Get.put<WeatherRepository>(WeatherRepositoryImpl(Get.find<WeatherApi>()));
  }
}
