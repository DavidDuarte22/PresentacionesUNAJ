
import 'package:TallerUNAJ2/model/weather_model.dart';
import 'package:json_annotation/json_annotation.dart';
import 'temp_model.dart';

part 'main_weather_model.g.dart';

@JsonSerializable()
class MainWeatherModel{
  @JsonKey(name: 'name')
  String cityName;
  @JsonKey(name: 'weather')
  List<WeatherModel> description;
  @JsonKey(name: 'main')
  TempModel temperature;

  MainWeatherModel(this.cityName, this.description, this.temperature);

  factory MainWeatherModel.fromJson(Map<String, dynamic> json) => _$MainWeatherModelFromJson(json);
  Map<String, dynamic> toJson() => _$MainWeatherModelToJson(this);

}