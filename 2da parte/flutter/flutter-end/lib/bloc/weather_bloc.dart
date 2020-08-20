import 'dart:async';

import 'package:TallerUNAJ2/Repository/weather_repo.dart';
import 'package:TallerUNAJ2/model/weather_model.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc(this.repository) : super(WeatherInitial());

  WeatherRepo repository;

  @override
  Stream<WeatherState> mapEventToState(
    WeatherEvent event,
  ) async* {
    if (event is FetchWeatherEvent) {
      try {
        final WeatherModel weatherResult = repository.getWeatherByCity(event.cityName);
        // yield es como un return pero que no termina la funcion
        yield WeatherLoadedState(weatherResult);
      } catch(_) {
        yield WeatherErrorState();
      }
    } else if (event is ResetWeatherEvent) {
        yield WeatherInitial();
    } else if (event is ErrorWeatherEvent) {
        yield WeatherErrorState();
    }
  }
}
