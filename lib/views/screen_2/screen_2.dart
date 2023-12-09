import 'package:flutter/material.dart';
import 'package:maverin_assignment/views/screen_2/nested_reply.dart';
import 'package:maverin_assignment/views/screen_2/reply.dart';

import '../bottom_nav_bar/bottom_nav_bar.dart';
import 'expanded_post.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      backgroundColor: const Color(0xff141414),
      appBar: AppBar(
        backgroundColor: const Color(0xff141414),
        automaticallyImplyLeading: false,
        title: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Image.asset(
            'assets/icons/left_arrow.png',
            height: 34,
            width: 34,
          ),
        ),
        actions: const [
          Image(
            image: AssetImage('assets/icons/search.png'),
            height: 21,
            width: 21,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Image(
              image: AssetImage('assets/icons/chat.png'),
              height: 21,
              width: 21,
            ),
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            ExpandedPost(),
            Divider(
              color: Color(0xffC8C8C8),
              height: 1,
            ),
            NestedReply(),
            Divider(
              color: Color(0xffC8C8C8),
              height: 1,
            ),
            Reply(isNested: false, name: 'Alen Maxwell'),
          ],
        ),
      ),
    );
  }
}
