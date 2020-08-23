part of 'weather_bloc.dart';

abstract class WeatherEvent extends Equatable {
  const WeatherEvent();
}

class FetchWeatherEvent extends WeatherEvent {
  final String cityName;

  FetchWeatherEvent(this.cityName);
  @override
  // TODO: implement props
  List<Object> get props => [cityName];
}

class ErrorWeatherEvent extends WeatherEvent {
  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();

}