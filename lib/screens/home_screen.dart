import 'package:flutter/material.dart';

import 'page/five/five.dart';

import 'page/in_app_webview/in_app_webview_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  ///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const FiveScreen()));
              },
              child: const Text('ChromeSafariBrowser'),
            ),
            const Divider(color: Colors.redAccent, thickness: 5),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const InAppWebviewPage()));
              },
              child: const Text('InAppWebview'),
            ),
          ],
        ),
      ),
    );
  }
}
