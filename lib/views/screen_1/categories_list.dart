import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

List<String> categories = ['Art', 'Fashion', 'Tech', 'Legal'];

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
          ),
          decoration: BoxDecoration(
            color: const Color(0xff2B2B2B),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.white, width: 1),
          ),
          child: Center(
            child: Text(
              categories[index],
              style: GoogleFonts.inter(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 11,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
