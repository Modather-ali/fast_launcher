import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      appBar: AppBar(title: const Text('Fast Launcher')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: double.infinity),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              UrlButton(
                icon: FontAwesomeIcons.whatsapp,
                onPressed: () {
                  _goToLauncher(context, Urls.whatsapp);
                },
              ),
              UrlButton(
                icon: FontAwesomeIcons.googlePay,
                onPressed: () {
                  _goToLauncher(context, Urls.googlePlay);
                },
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              UrlButton(
                icon: FontAwesomeIcons.telegram,
                onPressed: () {
                  _goToLauncher(context, Urls.telegram);
                },
              ),
              UrlButton(
                icon: FontAwesomeIcons.link,
                onPressed: () {
                  _goToLauncher(context, '');
                },
              ),
            ],
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
