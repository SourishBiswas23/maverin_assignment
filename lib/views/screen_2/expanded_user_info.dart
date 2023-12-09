import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpandedUserInfo extends StatelessWidget {
  const ExpandedUserInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
              'assets/icons/user.png',
              height: 35,
              width: 35,
              color: Colors.white,
            ),
            const SizedBox(width: 5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'John Doe',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '10 min ago',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: 8,
                    color: const Color(0xffB7B7B7),
                  ),
                )
              ],
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 10),
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 6,
              ),
              decoration: BoxDecoration(
                color: const Color(0xff2B2B2B),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white, width: 1),
              ),
              child: Center(
                child: Text(
                  'Health Care',
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 7,
                  ),
                ),
              ),
            ),
            const Icon(
              Icons.more_vert_outlined,
              color: Colors.white,
            )
          ],
        )
      ],
    );
  }
}
