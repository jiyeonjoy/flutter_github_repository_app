import 'package:flutter/material.dart';
import 'package:flutter_github_repository_app/app/common/config/r.dart';
import 'package:flutter_github_repository_app/app/list/controller/list_page_controller.dart';

class SortButton extends StatelessWidget {
  final RepositoryListSortType sortType;
  final bool isSelected;

  const SortButton(this.sortType, this.isSelected, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          ListPageController.to.setSortType(sortType);
        },
        child: Text(
          sortType.text,
          style: isSelected ? textStyle600(R.color.black, 15) :
              textStyleNormal(R.color.color_6E747A, 15)
        )
    );
  }
}
