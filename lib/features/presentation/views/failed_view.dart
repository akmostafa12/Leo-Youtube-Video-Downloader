import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controller/download_bloc.dart';

class FAILED extends StatelessWidget {
  const FAILED({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [Color(0xff151517), Color(0xff3A4045)],
          )),
          child: Center(
            child: Column(
              children: [
                const Spacer(
                  flex: 1,
                ),
                const Text(
                  'There Was An Error Happend',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 15),
                ),
                const SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    context.read<DownloadBloc>().add(BackEvent());
                  },
                  child: Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(36),
                      color: const Color(0xff3A4045),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 12),
                      child: Text('Back',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                          textAlign: TextAlign.center),
                    ),
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
              ],
            ),
          )),
    );
  }
}
