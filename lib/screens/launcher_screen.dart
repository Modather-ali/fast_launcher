import 'package:flutter/material.dart';

import '../services/launcher_services.dart';

class LauncherScreen extends StatelessWidget {
  final String url;
  LauncherScreen({super.key, required this.url});
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          const SizedBox(
            width: double.infinity,
            height: 200,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
            child: TextField(
              controller: _controller,
              decoration: const InputDecoration(border: OutlineInputBorder()),
              maxLines: null,
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
