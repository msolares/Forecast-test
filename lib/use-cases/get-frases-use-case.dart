import 'package:wheathertest/domain/do_you_know_dto.dart';
import '../data/do-you-know/phrase-loader.dart';

class GetPhrasesUseCase {
  final FraseLoader loader;
  GetPhrasesUseCase(this.loader);

  Future<List<DoYouKnow>> call(String lg) async {
    return await loader.load(lg);
  }
}
