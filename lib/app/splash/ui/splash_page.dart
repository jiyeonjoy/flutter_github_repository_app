import 'package:flutter/material.dart';
import 'package:flutter_github_repository_app/app/splash/controller/splash_page_controller.dart';
import 'package:get/get.dart';

class SplashPage extends GetView<SplashPageController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text(
          'Splash Page',
        ),
      ),
    );
  }
}
