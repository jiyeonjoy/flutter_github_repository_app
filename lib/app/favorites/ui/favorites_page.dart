import 'package:flutter/material.dart';
import 'package:flutter_github_repository_app/app/favorites/controller/favorites_page_controller.dart';
import 'package:get/get.dart';

class FavoritesPage extends GetView<FavoritesPageController> {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text(
          'Favorites Page',
        ),
      ),
    );
  }
}
