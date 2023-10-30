import 'package:flutter/material.dart';
import 'package:flutter_github_repository_app/app/common/config/r.dart';

class EmptyErrorView extends StatelessWidget {
  const EmptyErrorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        R.string.emptyErrorMessage,
      ),
    );
  }
}