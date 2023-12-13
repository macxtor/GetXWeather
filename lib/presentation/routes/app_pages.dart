import 'package:get/get_navigation/src/routes/get_route.dart';

import '../weather/bindings/weather_binding.dart';
import '../weather/view/weather_page.dart';
import 'app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.weather,
      page: () => const WeatherPage(),
      binding: WeatherInformationBinding(),
    ),
  ];
}
