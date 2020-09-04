import 'package:TallerUNAJ2/model/main_weather_model.dart';
import 'package:TallerUNAJ2/model/temp_model.dart';
import 'package:TallerUNAJ2/model/weather_model.dart';
import 'package:provider/provider.dart';
import 'package:TallerUNAJ2/repository/api_service.dart';

class WeatherRepo {
  getWeatherByCity(String cityName) async {
    final apiService = ApiService.create();
    final response = await apiService.getWeatherByCity(cityName: cityName);
    final weather = MainWeatherModel.fromJson(response.body);
    return weather;

    if (cityName == "La Plata") {
      return MainWeatherModel("La Plata, Buenos Aires",
          [ WeatherModel("cielo nublado") ] ,
          TempModel(
              284.08,
              283.71,
              284.82
          )
      );
    } else {
      return MainWeatherModel("Florencio Varela, Buenos Aires",
          [ WeatherModel("cielo nublado") ] ,
          TempModel(
              284.08,
              283.71,
              284.82
          )
      );
    }
  }
}