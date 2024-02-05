import 'package:weather_app/weather/domain/entities/weather.dart';

// * Contract between layers

abstract class BaseWeatherRepository {
  Future<Weather> getWeatherByCityName(String cityName);
}
