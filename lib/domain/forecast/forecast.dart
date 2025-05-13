
import '../../data/models/forecast/current_dto.dart';
import '../../data/models/forecast/current_units_dto.dart';
import '../../data/models/forecast/daily_units_dto.dart';
import '../../data/models/forecast/daily_dto.dart';
import '../../data/models/forecast/hourly_units_dto.dart';
import '../../data/models/forecast/hourly_dto.dart';

class ForecastMdl {
  double latitude;
  double longitude;
  double generationtimeMs;
  int utcOffsetSeconds;
  String timezone;
  String timezoneAbbreviation;
  int elevation;
  CurrentUnits currentUnits;
  Current current;
  HourlyUnits hourlyUnits;
  Hourly hourly;
  DailyUnits dailyUnits;
  Daily daily;

  ForecastMdl(
      this.latitude,
      this.longitude,
      this.generationtimeMs,
      this.utcOffsetSeconds,
      this.timezone,
      this.timezoneAbbreviation,
      this.elevation,
      this.currentUnits,
      this.current,
      this.hourlyUnits,
      this.hourly,
      this.dailyUnits,
      this.daily);
}