import 'package:flutter_github_repository_app/app/detail/binding/detail_page_binding.dart';
import 'package:flutter_github_repository_app/app/detail/ui/detail_page.dart';
import 'package:flutter_github_repository_app/app/list/binding/list_page_binding.dart';
import 'package:flutter_github_repository_app/app/root/binding/root_page_binding.dart';
import 'package:flutter_github_repository_app/app/root/ui/root_page.dart';
import 'package:flutter_github_repository_app/app/saved/binding/saved_page_binding.dart';
import 'package:flutter_github_repository_app/app/splash/binding/splash_page_binding.dart';
import 'package:flutter_github_repository_app/app/splash/ui/splash_page.dart';
import 'package:flutter_github_repository_app/app/webview/binding/webview_page_binding.dart';
import 'package:flutter_github_repository_app/app/webview/ui/webview_page.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

abstract class AppPages {
  static const initialPage = AppRoutes.splashPage;

  static final pages = [
    GetPage(
      name: AppRoutes.splashPage,
      page: () => const SplashPage(),
      binding: SplashPageBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: AppRoutes.rootPage,
      page: () => const RootPage(),
      bindings: [
        RootPageBinding(),
        ListPageBinding(),
        SavedPageBinding(),
      ],
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: AppRoutes.detailPage,
      page: () => const DetailPage(),
      binding: DetailPageBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: AppRoutes.webViewPage,
      page: () => const WebViewPage(),
      binding: WebViewPageBinding(),
      transition: Transition.fadeIn,
    ),
  ];
}
