part of 'download_bloc.dart';

@immutable
abstract class DownloadEvent {}

class ExtractEvent extends DownloadEvent {}

class DownloadFileEvent extends DownloadEvent {}

class GetFileEvent extends DownloadEvent {}

class BackEvent extends DownloadEvent {}
