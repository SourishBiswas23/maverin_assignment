import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PostContent extends StatelessWidget {
  const PostContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Food waste or food loss refers to uneaten or discarded food.',
            style: GoogleFonts.inter(
              fontSize: 10,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Some avenues that can be explored are educating farmers ongood storage practices, recycling and composting, providing transportation and storage facilities, re-distributing leftover food from parties and events, and setting up compost plants and food waste management platforms.',
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w400,
              color: Colors.white,
              fontSize: 10,
            ),
          ),
        ),
      ],
    );
  }
}
