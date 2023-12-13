import 'package:get/get.dart';
import 'package:getx_weather/presentation/weather/bindings/weather_binding.dart';

class PresentationBinding extends Bindings {
  @override
  void dependencies() {
    WeatherInformationBinding().dependencies();
  }
}
