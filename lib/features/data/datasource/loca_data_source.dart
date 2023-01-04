import 'package:flutter/services.dart';
import 'package:flutter_youtube_downloader/flutter_youtube_downloader.dart';
import 'package:video/core/service/service_locator.dart';
import 'package:video/features/presentation/controller/download_bloc.dart';
import 'package:youtube_video_info/youtube_video_info.dart';

DownloadBloc g = DownloadBloc(sl(), sl(), sl());

abstract class BaseLocaDataSource {
  Future<void> download(String url);

  Future<void> extractYoutubeLink(String url);

  Future<void> getFile(String url);
}

class LocalDataSource implements BaseLocaDataSource {
  @override
  Future<void> download(String url) async {
    final result = await FlutterYoutubeDownloader.downloadVideo(
        url, "Leo Youtube Downloader.", 18);
    print(result);
  }

  @override
  Future<void> extractYoutubeLink(String url) async {
    String link;
    try {
      link = await FlutterYoutubeDownloader.extractYoutubeLink(url, 18);
    } on PlatformException {
      link = 'Failed to Extract YouTube Video Link.';
    }
  }

  @override
  Future<void> getFile(String url) async {
    g.downloadData = await YoutubeData.getData(url);
  }
}
