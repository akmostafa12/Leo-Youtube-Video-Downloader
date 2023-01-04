import 'package:video/features/data/datasource/loca_data_source.dart';
import 'package:video/features/domain/repository/base_repository.dart';

class Repository implements BaseRepository {
  BaseLocaDataSource baseLocaDataSource;

  Repository(this.baseLocaDataSource);

  @override
  Future<void> download(String url) async {
    return await baseLocaDataSource.download(url);
  }

  @override
  Future<void> extractYoutubeLink(String url) async {
    return await baseLocaDataSource.extractYoutubeLink(url);
  }

  @override
  Future<void> getFile(String url) async {
    return await baseLocaDataSource.getFile(url);
  }
}
