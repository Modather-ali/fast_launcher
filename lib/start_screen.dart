import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'launcher_screen.dart';
import 'url_button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({
    super.key,
  });

  final String _googlePlayUrl =
      'https://play.google.com/store/apps/details?id=';
  final String _whatsappUrl = 'https://wa.me/';
  //'whatsapp://send?phone=';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: double.infinity),
          UrlButton(
            icon: Icons.call,
            onPressed: () {
              _goToLauncher(context, _whatsappUrl);
            },
          ),
          const SizedBox(
            width: double.infinity,
            height: 20,
          ),
          UrlButton(
            icon: Icons.store,
            onPressed: () {
              _goToLauncher(context, _googlePlayUrl);
            },
          ),
        ],
      ),
    );
  }

  _goToLauncher(BuildContext context, String url) {
    return Navigator.of(context).push(
        CupertinoPageRoute(builder: (context) => LauncherScreen(url: url)));
  }
}
