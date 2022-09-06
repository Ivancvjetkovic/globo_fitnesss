class Weather {
  String name = '';
  String description = '';
  double temparature = 0;
  double perceived = 0;
  int preasure = 0;
  int humidity = 0;

  Weather(this.name, this.description, this.temparature, this.perceived,
      this.preasure, this.humidity);

  Weather.fromJson(Map<String, dynamic> weatherMap) {
    this.name = weatherMap['name'];
    this.temparature = (weatherMap['main']['temp'] - 273.15) ?? 0;
    perceived = (weatherMap['main']['feels_like'] - 273.15) ?? 0;
    this.preasure = weatherMap['main']['preasure'] ?? 0;
    this.humidity = weatherMap['main']['humidity'] ?? 0;
    this.description = weatherMap['weather'][0]['main'] ?? '';
  }
}
