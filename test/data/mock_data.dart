import 'package:getx_weather/data/dto/condition_dto.dart';
import 'package:getx_weather/data/dto/current_dto.dart';
import 'package:getx_weather/data/dto/location_dto.dart';
import 'package:getx_weather/data/dto/weather_dto.dart';

var mockCondition = ConditionDto(text: "text", icon: "icon");
var mockLocation = LocationDto(name: "name", region: "region", country: "country", localtime: "localtime");
var mockCurrent = CurrentDto(lastUpdated: "lastUpdated", tempC: 1, isDay: 1, condition: mockCondition);
var mockWeatherResponseDto = WeatherResponseDto(location: mockLocation, current: mockCurrent);
