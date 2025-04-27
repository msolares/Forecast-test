import 'package:freezed_annotation/freezed_annotation.dart';
part 'hourly.freezed.dart';
part 'hourly.g.dart';

@freezed
abstract class Hourly with _$Hourly{
  const factory Hourly({
    required List<String> time,
    @JsonKey(name: 'temperature_2m') required List<double> temperature2M,
    @JsonKey(name: 'precipitation_probability') required List<int> precipitationProbability,
    @JsonKey(name: 'apparent_temperature') required List<double> apparentTemperature,
  }) = _Hourly;

  factory Hourly.fromJson(Map<String, dynamic> json) => _$HourlyFromJson(json);
}