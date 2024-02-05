// ? Domain layer is the most stable layer 
// * Here i create just a blue Print of model 
class Weather {
  final int id;
  final String cityName;
  final String main;
  final String description;
  final int pressure;

  Weather(
    this.id,
    this.cityName,
    this.main,
    this.description,
    this.pressure,
  );
}
