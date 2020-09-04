part of 'weather_bloc.dart';

abstract class WeatherState extends Equatable {
  const WeatherState();
}

class WeatherInitial extends WeatherState {
  @override
  List<Object> get props => [];
}

class NewWeatherState extends WeatherState {
  final MainWeatherModel weather;

  NewWeatherState(this.weather);
  @override
  // TODO: implement props
  List<Object> get props => [weather];
}
