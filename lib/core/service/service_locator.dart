import 'package:get_it/get_it.dart';
import 'package:video/features/data/datasource/loca_data_source.dart';
import 'package:video/features/data/repository/repository.dart';
import 'package:video/features/domain/repository/base_repository.dart';
import 'package:video/features/domain/usecase/download.dart';
import 'package:video/features/domain/usecase/extract_youtube_link.dart';
import 'package:video/features/domain/usecase/get_file.dart';
import 'package:video/features/presentation/controller/download_bloc.dart';

final sl = GetIt.instance;

class ServiceLocator {
  void init() {
    sl.registerLazySingleton(() => DownloadBloc(sl(), sl(), sl()));
    sl.registerLazySingleton(() => Download(sl()));
    sl.registerLazySingleton(() => ExtractYoutubeLink(sl()));
    sl.registerLazySingleton(() => GetFile(sl()));
    sl.registerLazySingleton<BaseLocaDataSource>(() => LocalDataSource());
    sl.registerLazySingleton<BaseRepository>(() => Repository(sl()));
  }
}
