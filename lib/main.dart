import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video/core/service/service_locator.dart';
import 'package:video/features/data/datasource/loca_data_source.dart';
import 'package:video/features/presentation/screens/splash.dart';

void main() {
  ServiceLocator().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => g,
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SPLASH(),
      ),
    );
  }
}
