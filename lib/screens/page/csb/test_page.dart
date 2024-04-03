import 'package:flutter_inappwebview/flutter_inappwebview.dart';

/// InAppBrowserを継承したオリジナルクラス
class MyInAppBrowser extends ChromeSafariBrowser {
  @override
  Future onLoadStart(String url) async {
    print("\n\nStarted $url\n\n");
  }

  @override
  Future onLoadStop(String url) async {
    print("\n\nStopped $url\n\n");
  }

  @override
  void onLoadError(String url, int code, String message) {
    print("\n\nCan't load $url.. Error: $message\n\n");
  }

  @override
  void onExit() {
    print("\n\nBrowser closed!\n\n");
  }
}

/// ChromeSafariBrowserを継承したオリジナルクラス
class MyChromeSafariBrowser extends ChromeSafariBrowser {
  MyChromeSafariBrowser() : super();

  @override
  void onOpened() {
    print("ChromeSafari browser opened");
  }

  @override
  void onLoaded() {
    print("ChromeSafari browser loaded");
  }

  @override
  void onClosed() {
    print("ChromeSafari browser closed");
  }
}

class BrowserPage {
  /// ブラウザオブジェクト
  MyChromeSafariBrowser browser = MyChromeSafariBrowser();

  /// ブラウザ生成
  Future<void> setBrowserPage() async {
    await browser.open(
      url: WebUri("https://www.google.co.jp/"),
      settings: ChromeSafariBrowserSettings(
          // shareState: CustomTabsShareState.SHARE_STATE_OFF,
          // isSingleInstance: false,
          // isTrustedWebActivity: false,
          // keepAliveEnabled: true,
          // startAnimations: [
          //   AndroidResource.anim(name: "slide_in_left", defPackage: "android"),
          //   AndroidResource.anim(name: "slide_out_right", defPackage: "android")
          // ],
          // exitAnimations: [
          //   AndroidResource.anim(name: "abc_slide_in_top", defPackage: "com.pichillilorenzo.flutter_inappwebviewexample"),
          //   AndroidResource.anim(name: "abc_slide_out_top", defPackage: "com.pichillilorenzo.flutter_inappwebviewexample")
          // ],
          // dismissButtonStyle: DismissButtonStyle.CLOSE,
          // presentationStyle: ModalPresentationStyle.OVER_FULL_SCREEN,
          ),
    );

    // await browser.open(
    //     url: "https://www.google.com/",
    //     options: ChromeSafariBrowserClassOptions(
    //         androidChromeCustomTabsOptions: AndroidChromeCustomTabsOptions(
    //             // Android(Chrome)オプション
    //             addShareButton: false),
    //         iosSafariOptions: IosSafariOptions(
    //           // iOS(Safari)オプション
    //           barCollapsingEnabled: true,
    //           preferredBarTintColor: "#2b374d",
    //           preferredControlTintColor: "#ffffff",
    //         )));
  }
}
