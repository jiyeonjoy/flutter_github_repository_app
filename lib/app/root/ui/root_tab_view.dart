import 'package:flutter/material.dart';
import 'package:flutter_github_repository_app/app/list/ui/list_page.dart';
import 'package:flutter_github_repository_app/app/root/controller/root_page_controller.dart';
import 'package:flutter_github_repository_app/app/saved/ui/saved_page.dart';

class RootTabView extends StatelessWidget {
  final RootTab rootTab;
  const RootTabView(this.rootTab, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch(rootTab) {
      case RootTab.list:
        return const ListPage();
      case RootTab.savedList:
        return const SavedPage();
    }
  }
}
