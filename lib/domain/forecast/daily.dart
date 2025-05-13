
class DailyMdl {
  List<String> time;
  List<double> temperature2MMax;
  List<double> temperature2MMin;
  List<int> precipitationProbabilityMax;
  List<double> uvIndexClearSkyMax;
  List<int> cloudCoverMean;

  DailyMdl(
      this.time,
      this.temperature2MMax,
      this.temperature2MMin,
      this.precipitationProbabilityMax,
      this.uvIndexClearSkyMax,
      this.cloudCoverMean);
}