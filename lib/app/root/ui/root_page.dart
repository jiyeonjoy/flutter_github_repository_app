import 'package:flutter/material.dart';
import 'package:flutter_github_repository_app/app/common/config/r.dart';
import 'package:flutter_github_repository_app/app/common/ui/edge_insets.dart';
import 'package:flutter_github_repository_app/app/root/controller/root_page_controller.dart';
import 'package:flutter_github_repository_app/app/root/ui/root_tab_view.dart';
import 'package:get/get.dart';

class RootPage extends GetView<RootPageController> {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RootPageController>(
      init: controller,
      builder: (_) {
        return Scaffold(
          backgroundColor: R.color.white,
          body: RootTabView(_.currentTab),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              ...RootTab.values.map(
                    (tab) => _buildNavigationBarItem(tab),
              ),
            ],
            backgroundColor: R.color.white,
            selectedItemColor: R.color.black,
            unselectedItemColor: R.color.black.withOpacity(0.5),
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            currentIndex: _.currentTab.index,
            onTap: (index) {
              if (_.currentTab.index != index) {
                _.changeTab(index);
              }
            },
          ),
        );
      },
    );
  }

  BottomNavigationBarItem _buildNavigationBarItem(RootTab tab) {
    return BottomNavigationBarItem(
      icon: Container(padding: edgeInsets(bottom: 2), child: tab.icon),
      activeIcon: Container(
        padding: edgeInsets(bottom: 2),
        child: tab.selectedIcon,
      ),
      label: tab.title,
    );
  }
}
