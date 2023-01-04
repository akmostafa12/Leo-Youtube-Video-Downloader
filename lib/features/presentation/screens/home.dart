import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_transition/page_transition.dart';
import 'package:video/features/presentation/controller/download_state.dart';

import '../controller/download_bloc.dart';
import '../views/failed_view.dart';
import '../views/link_view.dart';
import '../views/loading_view.dart';
import '../views/success_view.dart';
import 'contactus.dart';

class HOME extends StatelessWidget {
  const HOME({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        BlocBuilder<DownloadBloc, DownloadState>(
          builder: (context, state) {
            if (state is Link) {
              return const LINK();
            }
            if (state is Loading) {
              return const LOADING();
            }
            if (state is Success) {
              return const SUCCESS();
            }
            if (state is Failed) {
              return const FAILED();
            } else {
              return const SizedBox();
            }
          },
        ),
      ],
    ));
  }
}
