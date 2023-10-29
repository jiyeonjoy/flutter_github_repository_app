import 'package:flutter/material.dart';
import 'package:flutter_github_repository_app/app/common/config/r.dart';

class NetworkErrorView extends StatelessWidget {
  const NetworkErrorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        R.string.networkErrorMessage,
      ),
    );
  }
}
