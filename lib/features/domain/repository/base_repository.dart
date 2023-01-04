abstract class BaseRepository {
  Future<void> download(String url);

  Future<void> extractYoutubeLink(String url);

  Future<void> getFile(String url);
}
