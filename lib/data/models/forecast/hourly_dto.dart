import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/forecast/hourly.dart';

part 'hourly_dto.freezed.dart';
part 'hourly_dto.g.dart';

@freezed
abstract class Hourly with _$Hourly {
  const factory Hourly({
    required List<String> time,
    @JsonKey(name: 'temperature_2m') required List<double> temperature2M,
    @JsonKey(name: 'precipitation_probability') required List<int> precipitationProbability,
    @JsonKey(name: 'apparent_temperature') required List<double> apparentTemperature,
    @JsonKey(name: 'cloud_cover') required List<int> cloudCover,
  }) = _Hourly;

  factory Hourly.fromJson(Map<String, dynamic> json) => _$HourlyFromJson(json);

  factory Hourly.fromDomain(HourlyMdl model) => Hourly(
    time: model.time,
    temperature2M: model.temperature2M,
    precipitationProbability: model.precipitationProbability,
    apparentTemperature: model.apparentTemperature,
    cloudCover: model.cloudCover,
  );
}

extension HourlyMapper on Hourly {
  HourlyMdl toDomain() => HourlyMdl(
    time,
    temperature2M,
    precipitationProbability,
    apparentTemperature,
    cloudCover,
  );
}
