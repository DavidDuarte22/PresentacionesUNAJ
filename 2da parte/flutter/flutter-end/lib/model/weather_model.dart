import 'package:TallerUNAJ2/model/temp_model.dart';

class WeatherModel{
  String cityName;
  int timestamp;
  TempModel temperature;

  WeatherModel(this.cityName, this.timestamp, this.temperature);
}