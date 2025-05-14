

import 'package:wheathertest/domain/entities/forecast/do-you-know.dart';

import '../../../data/do-you-know/phrase-loader.dart';

class DoYouKnowUseCase {
  final DoYouKnowLoader loader;
  DoYouKnowUseCase(this.loader);

  Future<List<DoYouKnowMdl>> call(String lg) async {
    return await loader.load(lg);
  }
}
