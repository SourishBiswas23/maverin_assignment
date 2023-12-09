import 'package:flutter/material.dart';

import '../screen_2/screen_2.dart';
import 'post_content.dart';
import 'user_info.dart';
import 'votes_and_comments.dart';

class UserPost extends StatelessWidget {
  const UserPost({super.key, required this.showSong});
  final bool showSong;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const Screen2(),
      )),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xff1F2220),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: const Color(0x1AFFDB1A),
            width: 1,
          ),
        ),
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(
          left: 10,
          right: 10,
          top: 20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const UserInfo(),
            const PostContent(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: showSong ? Image.asset('assets/icons/song.png') : null,
            ),
            const VotesAndComments()
          ],
        ),
      ),
    );
  }
}
