part of 'weather_bloc.dart';

abstract class WeatherEvent extends Equatable {
  const WeatherEvent();
}

class FetchWeatherEvent extends WeatherEvent {
  final String cityName;

  FetchWeatherEvent(this.cityName);

  // como es equatable sobreescribimos nuestras propiedades
  @override
   List<Object> get props => [cityName];

}

class ResetWeatherEvent extends WeatherEvent {

  @override
  // TODO: implement props
  List<Object> get props => [];
}

class ErrorWeatherEvent extends WeatherEvent {

  @override
  // TODO: implement props
  List<Object> get props => [];
}