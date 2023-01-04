import 'package:video/features/domain/repository/base_repository.dart';

class Download {
  BaseRepository baseRepository;

  Download(this.baseRepository);

  Future<void> excute(String url) {
    return baseRepository.download(url);
  }
}
