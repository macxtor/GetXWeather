import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'bindings/app_binding.dart';
import 'presentation/routes/app_pages.dart';
import 'presentation/weather/view/weather_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GetX Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialBinding: AppBinding(),
      // Use the binding here
      home: const WeatherPage(),
      getPages: AppPages.pages,
    );
  }
}
