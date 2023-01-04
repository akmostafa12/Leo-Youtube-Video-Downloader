import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/datasource/loca_data_source.dart';
import '../controller/download_bloc.dart';

class SUCCESS extends StatelessWidget {
  const SUCCESS({
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
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [Color(0xff151517), Color(0xff3A4045)],
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(
                flex: 1,
              ),
              SizedBox(
                height: double.parse('${g.downloadData?.thumbnailHeight}'),
                width: double.parse('${g.downloadData?.thumbnailWidth}'),
                child: Image.network('${g.downloadData?.thumbnailUrl}'),
              ),
              Text(
                '${g.downloadData?.title}',
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '${g.downloadData?.authorName}',
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Spacer(flex: 1),
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
                  GestureDetector(
                    onTap: () {
                      context.read<DownloadBloc>().add(DownloadFileEvent());
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
                        child: Text('Download',
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
              const Spacer(
                flex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
