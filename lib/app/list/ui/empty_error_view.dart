import 'package:flutter/material.dart';

class EmptyErrorView extends StatelessWidget {
  const EmptyErrorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Empty Error...'),
    );
  }
}
