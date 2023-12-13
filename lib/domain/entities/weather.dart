class Weather {
  final String location;
  final String country;
  final String localTime;
  final String lastUpdated;
  final String temperatureCelsius;
  final String condition;
  final String icon;

  Weather({required this.location,
    required this.country,
    required this.localTime,
    required this.lastUpdated,
    required this.temperatureCelsius,
    required this.condition,
    required this.icon
  });
}
