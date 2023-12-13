class ConditionDto {
  final String text;
  final String icon;

  ConditionDto({required this.text, required this.icon});

  factory ConditionDto.fromJson(Map<String, dynamic> json) {
    return ConditionDto(
      text: json['text'],
      icon: json['icon'],
    );
  }
}
