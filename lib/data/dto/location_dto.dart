class LocationDto {
  final String name;
  final String region;
  final String country;
  final String localtime;

  LocationDto({
    required this.name,
    required this.region,
    required this.country,
    required this.localtime,
  });

  factory LocationDto.fromJson(Map<String, dynamic> json) {
    return LocationDto(
      name: json['name'],
      region: json['region'],
      country: json['country'],
      localtime: json['localtime'],
    );
  }
}
