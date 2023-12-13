import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:getx_weather/domain/entities/weather.dart';
import 'package:getx_weather/domain/usecase/get_weather_information_use_case.dart';

class WeatherInformationController extends GetxController {
  final GetWeatherInformationUseCase _getWeatherInformationUseCase;

  Rx<Weather?> weather = Rx<Weather?>(null);
  RxBool isLoading = true.obs;
  RxString error = ''.obs;

  WeatherInformationController(this._getWeatherInformationUseCase);

  @override
  void onInit() {
    fetchWeatherInformation("london");
    super.onInit();
  }

  Future<void> fetchWeatherInformation(String location) async {
    try {
      isLoading(true);
      weather.value = await _getWeatherInformationUseCase.execute(location);
    } catch (e) {
      error('Failed $e');
    } finally {
      isLoading(false);
    }
  }
}
