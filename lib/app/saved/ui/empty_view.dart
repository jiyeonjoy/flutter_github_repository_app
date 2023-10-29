import 'package:flutter/material.dart';
import 'package:flutter_github_repository_app/app/common/config/r.dart';

class EmptyView extends StatelessWidget {
  const EmptyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        R.string.noSavedMessage,
      ),
    );
  }
}
