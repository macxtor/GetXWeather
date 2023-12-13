import 'condition_dto.dart';

class CurrentDto {
  final String lastUpdated;
  final double tempC;
  final int isDay;
  final ConditionDto condition;

  CurrentDto({
    required this.lastUpdated,
    required this.tempC,
    required this.isDay,
    required this.condition,
  });

  factory CurrentDto.fromJson(Map<String, dynamic> json) {
    return CurrentDto(
      lastUpdated: json['last_updated'],
      tempC: json['temp_c'].toDouble(),
      isDay: json['is_day'],
      condition: ConditionDto.fromJson(json['condition']),
    );
  }
}
