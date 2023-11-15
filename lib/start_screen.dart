import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'launcher_screen.dart';
import 'url_button.dart';

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
              _goToLauncher(context, '');
            },
          ),
          UrlButton(
            icon: Icons.store,
            onPressed: () {
              _goToLauncher(context, '');
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
