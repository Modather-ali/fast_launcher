import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../services/urls.dart';
import 'launcher_screen.dart';
import 'widgets/url_button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({
    super.key,
  });

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
              _goToLauncher(context, Urls.whatsappUrl);
            },
          ),
          const SizedBox(
            width: double.infinity,
            height: 20,
          ),
          UrlButton(
            icon: Icons.store,
            onPressed: () {
              _goToLauncher(context, Urls.googlePlayUrl);
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
