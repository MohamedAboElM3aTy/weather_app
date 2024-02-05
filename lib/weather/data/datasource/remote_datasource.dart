import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:weather_app/weather/data/models/weather_model.dart';
import 'package:weather_app/core/utils/constances.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel?> getWeatherByCityName(String cityName);
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<WeatherModel?> getWeatherByCityName(String cityName) async {
    try {
      var response = await Dio().get(
          '${AppConstance.baseUrl}/weather?q=$cityName&appid=${AppConstance.appKey}');
      print(response);
      return WeatherModel.fromJson(response.data);
    } catch (e) {
      debugPrint(
        e.toString(),
      );
      return null;
    }
  }
}
