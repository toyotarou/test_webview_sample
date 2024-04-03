import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

//======================================//

class MyChromeSafariBrowser extends ChromeSafariBrowser {
  @override
  void onOpened() {
    print("ChromeSafari browser opened");
  }

  @override
  void onCompletedInitialLoad(didLoadSuccessfully) {
    print("ChromeSafari browser initial load completed");
  }

  @override
  void onClosed() {
    print("ChromeSafari browser closed");
  }
}

//======================================//

// class FiveScreen extends StatefulWidget {
//   const FiveScreen({super.key});
//
//   @override
//   State<FiveScreen> createState() => _FiveScreenState();
// }
//
// class _FiveScreenState extends State<FiveScreen> {

class FiveScreen extends StatelessWidget {
  FiveScreen({super.key});

  final browser = MyChromeSafariBrowser();

  // ///
  // @override
  // void initState() {
  //   browser.addMenuItem(
  //     ChromeSafariBrowserMenuItem(
  //       id: 1,
  //       label: 'Custom item menu 1',
  //       onClick: (url, title) {
  //         print('Custom item menu 1 clicked!');
  //       },
  //     ),
  //   );
  //   super.initState();
  // }

  ///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ChromeSafariBrowser Example')),
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              await browser.open(
                url: WebUri("https://www.yahoo.co.jp/"),
                settings: ChromeSafariBrowserSettings(
                  shareState: CustomTabsShareState.SHARE_STATE_OFF,
                  barCollapsingEnabled: true,
                ),
              );
            },
            child: const Text("Open Chrome Safari Browser")),
      ),
    );
  }
}
