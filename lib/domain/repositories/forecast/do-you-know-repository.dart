
import 'package:wheathertest/domain/entities/forecast/do-you-know.dart';

abstract class DoYouKnowRepository {
  Future<List<DoYouKnowMdl>> getDoyouKnow(String language);
}