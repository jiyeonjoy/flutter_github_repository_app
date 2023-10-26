import 'package:flutter/material.dart';
import 'package:flutter_github_repository_app/app/webview/controller/webview_page_controller.dart';
import 'package:get/get.dart';

class WebViewPage extends GetView<WebViewPageController> {
  const WebViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text(
          'WebView Page',
        ),
      ),
    );
  }
}
