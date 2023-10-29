import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_repository_app/app/common/config/r.dart';
import 'package:flutter_github_repository_app/app/common/ui/edge_insets.dart';
import 'package:flutter_github_repository_app/app/common/ui/touch_well.dart';
import 'package:flutter_github_repository_app/data/dto/response/search_repos/search_repos_item_dto.dart';

class GitHubRepositoryItemView extends StatelessWidget {
  final SearchReposItemDto reposItemDto;
  const GitHubRepositoryItemView(this.reposItemDto, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: edgeInsets(horizontal: 24, vertical: 12),
      child: TouchWell(
        borderRadius: BorderRadius.circular(8),
        child: Container(
          width: double.infinity,
          padding: edgeInsets(all: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: R.color.black, width: 2),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Hero(
                    tag: reposItemDto.html_url,
                    child: CachedNetworkImage(
                      imageUrl: reposItemDto.owner?.avatar_url ?? '',
                      width: 100,
                      height: 100,
                      errorWidget: (context, url, error) => const Icon(Icons.error),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Text(
                      '${reposItemDto.owner?.login}'
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text(
                  reposItemDto.html_url
              ),
            ],
          ),
        ),
      ),
    );
  }
}
