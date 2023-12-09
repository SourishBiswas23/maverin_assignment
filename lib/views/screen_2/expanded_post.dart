import 'package:flutter/material.dart';

import 'expanded_post_content.dart';
import 'expanded_user_info.dart';
import 'expanded_votes_and_comments.dart';

class ExpandedPost extends StatelessWidget {
  const ExpandedPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ExpandedUserInfo(),
          ExpandedPostContent(),
          ExpandedVotesAndComments()
        ],
      ),
    );
  }
}
