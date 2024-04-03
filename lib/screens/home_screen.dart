import 'package:flutter/material.dart';
import 'package:test_webview_three_pattern/screens/page/chrome_safari_browser/chrome_safari_browser_page.dart';
import 'package:test_webview_three_pattern/screens/page/csb/test_page.dart';

import 'page/in_app_webview/in_app_webview_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  ///
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => InAppWebviewPage()));
              },
              child: Text('InAppWebview')),
          Divider(
            color: Colors.redAccent,
            thickness: 5,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ChromeSafariBrowserExampleScreen()));
              },
              child: Text('ChromeSafariBrowser')),
          Divider(
            color: Colors.redAccent,
            thickness: 5,
          ),
        ],
      ),
    );
  }
}
