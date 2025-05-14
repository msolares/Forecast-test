import 'package:wheathertest/data/datasources/forecast/do-you.know-darasources.dart';
import 'package:wheathertest/domain/entities/forecast/do-you-know.dart';
import 'package:wheathertest/domain/repositories/forecast/do-you-know-repository.dart';

class DoYouKnowRepositoryImpl implements DoYouKnowRepository {
  final DoYouKnowDataSources _doYouKnowDataSource;
  DoYouKnowRepositoryImpl(this._doYouKnowDataSource);

  @override
  Future<List<DoYouKnowMdl>> getDoyouKnow(String language) async{
    final dto = await _doYouKnowDataSource.load(language);
    return dto;
  }
}