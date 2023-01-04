import 'package:video/features/domain/repository/base_repository.dart';

class ExtractYoutubeLink {
  BaseRepository baseRepository;

  ExtractYoutubeLink(this.baseRepository);

  Future<void> excute(String url) async {
    return await baseRepository.extractYoutubeLink(url);
  }
}
