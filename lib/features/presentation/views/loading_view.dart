import 'package:flutter/material.dart';

class LOADING extends StatelessWidget {
  const LOADING({
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
          child: const Center(
              child: CircularProgressIndicator(
            color: Colors.white,
          ))),
    );
  }
}
