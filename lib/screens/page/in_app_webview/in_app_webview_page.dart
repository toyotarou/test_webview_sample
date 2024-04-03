import 'package:flutter/material.dart';

import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class InAppWebviewPage extends StatelessWidget {
  const InAppWebviewPage({super.key});

  ///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.withOpacity(0.3),
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text('InAppWebviewPage', style: TextStyle(color: Colors.white)),
            const SizedBox(height: 20),
            Expanded(
              child: InAppWebView(
                initialUrlRequest: URLRequest(url: WebUri('https://www.google.co.jp/')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
