
import 'package:chopper/chopper.dart';
import 'package:TallerUNAJ2/model/main_weather_model.dart';

part 'api_service.chopper.dart';

@ChopperApi(baseUrl: '/weather')
abstract class ApiService extends ChopperService {

  @Get()
  Future<Response> getWeatherByCity({
      @Query("q") String cityName,
      @Query("appid") String token = token,
      @Query("lang") String lang = "es"});

  static ApiService create() {
    final client = ChopperClient(baseUrl: 'http://api.openweathermap.org/data/2.5',
    services: [
      _$ApiService(),
    ],
      converter: JsonConverter(),
    );
    return _$ApiService(client);
  }

}

const String token = "42da757df1dd57f50c6c9dd0751757e3";