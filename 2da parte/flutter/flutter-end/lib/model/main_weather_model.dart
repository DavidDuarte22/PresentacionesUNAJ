
import 'package:TallerUNAJ2/model/weather_model.dart';

import 'temp_model.dart';

class MainWeatherModel{
  String cityName;
  WeatherModel description;
  TempModel temperature;

  MainWeatherModel(this.cityName, this.description, this.temperature);
}