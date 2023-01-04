import 'package:flutter/cupertino.dart';

@immutable
abstract class DownloadState {}

class Loading extends DownloadState {}

class Link extends DownloadState {}

class Success extends DownloadState {}

class Failed extends DownloadState {}
