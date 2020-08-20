import 'package:TallerUNAJ2/model/temp_model.dart';
import 'package:TallerUNAJ2/model/weather_model.dart';
import 'dart:convert';

class WeatherRepo {
  getWeatherByCity(String cityName) {
    return mockWeatherObject;
  }
}


final mockWeatherObject = WeatherModel("La Plata, Buenos Aires",
    -10800,
    TempModel(
        284.08,
        283.71,
        284.82
    )
);