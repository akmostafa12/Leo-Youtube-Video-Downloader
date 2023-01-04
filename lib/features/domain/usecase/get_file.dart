
import 'package:video/features/domain/repository/base_repository.dart';

class GetFile {
  BaseRepository baseRepository;

  GetFile(this.baseRepository);

  Future<void> excute(String url) async {
    return await baseRepository.getFile(url);
  }
}
