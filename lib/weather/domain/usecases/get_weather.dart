// ? UseCases => this is the layer that connect with presentation layer

import 'package:weather_app/weather/domain/entities/weather.dart';
import 'package:weather_app/weather/domain/repository/base_weather_repo.dart';

class GetWeatherByCityName {
  final BaseWeatherRepository repository;

  GetWeatherByCityName(this.repository);

  Future<Weather> execute(String cityName) async {
    // ! This city Name come from presentation
    return await repository.getWeatherByCityName(cityName);
  }
}
