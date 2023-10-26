import 'package:flutter/material.dart';
import 'package:flutter_github_repository_app/app/list/controller/list_page_controller.dart';
import 'package:get/get.dart';

class ListPage extends GetView<ListPageController> {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text(
          'List Page',
        ),
      ),
    );
  }
}
