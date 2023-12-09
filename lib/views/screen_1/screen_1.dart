import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maverin_assignment/views/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:maverin_assignment/views/screen_1/categories_list.dart';
import 'package:maverin_assignment/views/screen_1/user_post.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      backgroundColor: const Color(0xff141414),
      appBar: AppBar(
        backgroundColor: const Color(0xff141414),
        title: Text(
          'IDUTE',
          style: GoogleFonts.inter(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 20,
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
          mainAxisSize: MainAxisSize.min,
          children: [
            CategoriesList(),
            UserPost(showSong: true),
            UserPost(showSong: false),
          ],
        ),
      ),
    );
  }
}
