import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ContactUs extends StatelessWidget {
  String facebook = 'https://www.facebook.com/mostafa.amin.08';
  String instgram = 'https://www.instagram.com/mostafa_amin881/';
  String youtube = 'https://www.youtube.com/channel/UC2KDRd6vwDyLiZ7zNvUo8aw';

  ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text(
            'Leo',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          flexibleSpace: Container(
              decoration: const BoxDecoration(
            gradient:
                LinearGradient(colors: [Color(0xff151517), Color(0xff3A4045)]),
          ))),
      body: Container(
        decoration: const BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0xff151517), Color(0xff3A4045)]),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Center(
            child: Column(
              children: [
                const Text(
                  'Follow Us On : ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                GestureDetector(
                  onTap: () {
                    launchUrlString(facebook,
                        mode: LaunchMode.externalApplication,
                        webViewConfiguration: const WebViewConfiguration(
                          enableJavaScript: true,
                        ));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.facebook,
                        size: 30,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Facebook',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    launchUrlString(instgram,
                        mode: LaunchMode.externalApplication,
                        webViewConfiguration: const WebViewConfiguration(
                          enableJavaScript: true,
                        ));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/instgram.ico',
                          height: 30, width: 30, color: Colors.white),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Instgram',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    launchUrlString(youtube,
                        mode: LaunchMode.externalApplication,
                        webViewConfiguration: const WebViewConfiguration(
                          enableJavaScript: true,
                        ));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/youtube.png',
                        height: 30,
                        width: 30,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Youtube',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                const Text(
                  'Powered By Mostafa Amin',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
