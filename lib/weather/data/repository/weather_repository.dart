import 'package:weather_app/weather/data/datasource/remote_datasource.dart';
import 'package:weather_app/weather/domain/entities/weather.dart';
import 'package:weather_app/weather/domain/repository/base_weather_repo.dart';

class WeatherRepository implements BaseWeatherRepository {
  final BaseRemoteDataSource baseRemoteDataSource;
  WeatherRepository(this.baseRemoteDataSource);

  @override
  Future<Weather> getWeatherByCityName(String cityName) async {
    return (await baseRemoteDataSource.getWeatherByCityName(cityName))!;
  }
}
