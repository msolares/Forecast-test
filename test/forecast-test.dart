

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wheathertest/data/datasources/forecast/forecast-datasources.dart';
import 'package:wheathertest/data/models/forecast/forecast_dto.dart';
import 'package:wheathertest/data/models/forecast/params_dto.dart';
import 'package:wheathertest/data/repositories/forecast/forecast-respository-impl.dart';

class MockForecastService extends Mock implements ForecastDataSource{}

  void main() {
    late ForecastDataSource mockForecastService;
    late ForecastRepositoryImpl forecastRepository;

    setUp((){
      mockForecastService = MockForecastService();
      forecastRepository = ForecastRepositoryImpl(mockForecastService);
    });

    test('debe devolver la previsión cuando forecast se llama', () async {
      String js = '''{
    "latitude": 51.5,
    "longitude": -0.120000124,
    "generationtime_ms": 0.1405477523803711,
    "utc_offset_seconds": 0,
    "timezone": "GMT",
    "timezone_abbreviation": "GMT",
    "elevation": 10.0,
    "current_units": {
        "time": "iso8601",
        "interval": "seconds",
        "temperature_2m": "°C",
        "rain": "mm",
        "wind_speed_10m": "km/h",
        "apparent_temperature": "°C",
        "is_day": "",
        "cloud_cover": "%"
    },
    "current": {
        "time": "2025-04-30T22:00",
        "interval": 900,
        "temperature_2m": 15.6,
        "rain": 0.00,
        "wind_speed_10m": 8.4,
        "apparent_temperature": 14.1,
        "is_day": 0,
        "cloud_cover": 0
    },
    "hourly_units": {
        "time": "iso8601",
        "temperature_2m": "°C",
        "precipitation_probability": "%",
        "apparent_temperature": "°C",
        "cloud_cover": "%"
    },
    "hourly": {
        "time": [
            "2025-04-30T00:00",
            "2025-04-30T01:00",
            "2025-04-30T02:00",
            "2025-04-30T03:00",
            "2025-04-30T04:00",
            "2025-04-30T05:00",
            "2025-04-30T06:00",
            "2025-04-30T07:00",
            "2025-04-30T08:00",
            "2025-04-30T09:00",
            "2025-04-30T10:00",
            "2025-04-30T11:00",
            "2025-04-30T12:00",
            "2025-04-30T13:00",
            "2025-04-30T14:00",
            "2025-04-30T15:00",
            "2025-04-30T16:00",
            "2025-04-30T17:00",
            "2025-04-30T18:00",
            "2025-04-30T19:00",
            "2025-04-30T20:00",
            "2025-04-30T21:00",
            "2025-04-30T22:00",
            "2025-04-30T23:00"
        ],
        "temperature_2m": [
            12.4,
            12.0,
            11.9,
            11.3,
            11.2,
            10.9,
            11.0,
            12.1,
            13.8,
            16.3,
            18.7,
            20.9,
            22.9,
            23.9,
            24.3,
            24.8,
            24.5,
            23.9,
            22.0,
            20.2,
            18.4,
            16.8,
            15.7,
            14.9
        ],
        "precipitation_probability": [
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0
        ],
        "apparent_temperature": [
            11.2,
            10.7,
            10.2,
            9.8,
            9.9,
            9.6,
            9.8,
            11.0,
            12.7,
            15.3,
            18.3,
            20.9,
            22.6,
            23.2,
            22.9,
            22.5,
            21.4,
            21.0,
            18.9,
            17.6,
            16.1,
            15.0,
            14.1,
            13.5
        ],
        "cloud_cover": [
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0
        ]
    },
    "daily_units": {
        "time": "iso8601",
        "cloud_cover_mean": "%",
        "temperature_2m_max": "°C",
        "temperature_2m_min": "°C",
        "precipitation_probability_max": "%",
        "uv_index_clear_sky_max": ""
    },
    "daily": {
        "time": [
            "2025-04-30"
        ],
        "cloud_cover_mean": [
            0
        ],
        "temperature_2m_max": [
            24.8
        ],
        "temperature_2m_min": [
            10.9
        ],
        "precipitation_probability_max": [
            0
        ],
        "uv_index_clear_sky_max": [
            6.25
        ]
    }
}''';

      Forecast f = Forecast.fromJson(json.decode(js));
      final mockForecast = Forecast(
        current: f.current,
        currentUnits: f.currentUnits,
        daily: f.daily,
        dailyUnits: f.dailyUnits,
        elevation: f.elevation,
        generationtimeMs: f.generationtimeMs,
        hourly: f.hourly,
        hourlyUnits: f.hourlyUnits,
        latitude: f.latitude,
        longitude: f.longitude,
        timezone: f.timezone,
        timezoneAbbreviation: f.timezoneAbbreviation,
        utcOffsetSeconds: f.utcOffsetSeconds
      );

      when(() => mockForecastService.getForecast(Params(long:  f.longitude, lat: f.latitude))).thenAnswer((_) async {
        print("Mock ejecutado");
        return mockForecast;
      });

      print("Llamando a getMovies() en MoviesRepository...");
      final result = await forecastRepository.getForecast(Params(long:  f.longitude, lat: f.latitude));
      print("Respuesta recibida: $result");

      // Validación
      expect(result, equals(mockForecast));
      // Asegura que se llamó una vez
      verify(() => mockForecastService.getForecast(Params(long:  f.longitude, lat: f.latitude))).called(1);
      // Verifica que no haya más interacciones
      verifyNoMoreInteractions(mockForecastService);

      print("Test finalizado correctamente");

    });
  }