import 'dart:async';

import 'package:TallerUNAJ2/model/main_weather_model.dart';
import 'package:TallerUNAJ2/model/temp_model.dart';
import 'package:TallerUNAJ2/repository/weather_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc() : super(WeatherInitial());

  final repo = WeatherRepo();
  @override
  Stream<WeatherState> mapEventToState(
    WeatherEvent event,
  ) async* {
    if(event is FetchWeatherEvent){
      MainWeatherModel weather = await repo.getWeatherByCity(event.cityName);
      weather.temperature = kelvinToCelcius(weather.temperature);
      yield NewWeatherState(weather);
    }
  }

  TempModel kelvinToCelcius(TempModel temp) {
    return TempModel(
        (temp.temp - 273.15).roundToDouble(),
        (temp.tempMin - 273.15).roundToDouble(),
        (temp.tempMax - 273.15).roundToDouble()
    );
  }
}
