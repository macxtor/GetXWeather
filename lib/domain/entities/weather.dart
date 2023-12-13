class Weather {
  final String location;
  final String country;
  final String localTime;
  final String lastUpdated;
  final String temperatureCelsius;
  final Condition condition;

  Weather(
      {required this.location,
      required this.country,
      required this.localTime,
      required this.lastUpdated,
      required this.temperatureCelsius,
      required this.condition});
}

class Condition {
  final String text;
  final String icon;

  Condition({required this.text, required this.icon});
}
