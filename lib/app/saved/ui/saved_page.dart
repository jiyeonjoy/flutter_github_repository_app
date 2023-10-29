import 'package:flutter/material.dart';
import 'package:flutter_github_repository_app/app/saved/controller/saved_page_controller.dart';
import 'package:get/get.dart';

class SavedPage extends GetView<SavedPageController> {
  const SavedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text(
          'Saved Page',
        ),
      ),
    );
  }
}
