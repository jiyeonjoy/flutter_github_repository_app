import 'package:flutter/material.dart';
import 'package:flutter_github_repository_app/app/common/config/r.dart';
import 'package:flutter_github_repository_app/app/common/ui/common_button.dart';
import 'package:flutter_github_repository_app/app/list/controller/list_page_controller.dart';

class NetworkErrorView extends StatelessWidget {
  const NetworkErrorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            R.string.networkErrorMessage,
          ),
          const SizedBox(height: 10),
          CommonButton(
            R.string.retryButton,
            onPressed: () {
              ListPageController.to.loadRepositories();
            },
          ),
        ],
      ),
    );
  }
}
