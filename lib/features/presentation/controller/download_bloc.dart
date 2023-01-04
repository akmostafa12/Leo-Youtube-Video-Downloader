
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:video/features/presentation/controller/download_state.dart';
import 'package:youtube_video_info/youtube.dart';

import '../../data/datasource/loca_data_source.dart';
import '../../domain/usecase/download.dart';
import '../../domain/usecase/extract_youtube_link.dart';
import '../../domain/usecase/get_file.dart';

part 'download_event.dart';

class DownloadBloc extends Bloc<DownloadEvent, DownloadState> {
  YoutubeDataModel? downloadData;
  String url = '';
  Download download;
  ExtractYoutubeLink extractYoutubeLink;
  GetFile getFile;

  DownloadBloc(this.download, this.extractYoutubeLink, this.getFile)
      : super(Link()) {
    on<DownloadEvent>((event, emit) async {
      if (event is DownloadFileEvent) {
        try {
          await download.excute(g.url);
        } catch (e) {
          emit(Failed());
        }
      }
      if (event is GetFileEvent) {
        emit(Loading());
        try {
          await extractYoutubeLink.excute(g.url);
          await getFile.excute(url);
          emit(Success());
        } catch (e) {
          emit(Failed());
        }
      }
      if (event is BackEvent) {
        emit(Link());
      }
    });
  }
}
