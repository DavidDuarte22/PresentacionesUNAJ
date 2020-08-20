part of 'weather_bloc.dart';

abstract class WeatherState extends Equatable {
  const WeatherState();
}

class WeatherInitial extends WeatherState {
  @override
  List<Object> get props => [];
}

class WeatherLoadedState extends WeatherState {
  final WeatherModel weather;

  WeatherLoadedState(this.weather);
  @override
  List<Object> get props => [];

}

class WeatherErrorState extends WeatherState {
  @override
  List<Object> get props => [];
}