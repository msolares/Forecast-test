class HourlyMdl {
  List<String> time;
  List<double> temperature2M;
  List<int> precipitationProbability;
  List<double> apparentTemperature;
  List<int> cloudCover;

  HourlyMdl(this.time, this.temperature2M, this.precipitationProbability,
      this.apparentTemperature, this.cloudCover);
}