import 'package:flutter/material.dart';
import 'package:flutter_github_repository_app/app/common/app_pages.dart';
import 'package:get/get.dart';

class GitHubRepositoryApp extends StatefulWidget {
  const GitHubRepositoryApp({super.key});

  @override
  State<GitHubRepositoryApp> createState() => _GitHubRepositoryAppState();
}

class _GitHubRepositoryAppState extends State<GitHubRepositoryApp> {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      enableLog: true,
      initialRoute: AppPages.initialPage,
      getPages: AppPages.pages,
      defaultTransition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 200),
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: NoEffectBehavior(),
          child: child ?? const SizedBox.shrink(),
        );
      },
    );
  }
}

class NoEffectBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context,
      Widget child,
      ScrollableDetails details,
      ) {
    return child;
  }
}
