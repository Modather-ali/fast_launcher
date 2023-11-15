import 'package:flutter/material.dart';

import 'launcher_services.dart';

class LauncherScreen extends StatelessWidget {
  final String url;
  LauncherScreen({super.key, required this.url});
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          const SizedBox(
            width: double.infinity,
            height: 400,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _controller,
            ),
          ),
          OutlinedButton(
              onPressed: () {
                LauncherServices.lunchUrl(url + _controller.text);
              },
              child: const Text('Open')),
        ],
      ),
    );
  }
}
