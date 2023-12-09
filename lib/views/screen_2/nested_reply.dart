import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'reply.dart';

class NestedReply extends StatelessWidget {
  const NestedReply({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Image.asset(
                'assets/icons/user.png',
                height: 28,
                width: 28,
              )
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sufana',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '10 min ago',
                    style: GoogleFonts.inter(
                      fontSize: 8,
                      color: const Color(0xffB7B7B7),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et.',
                    softWrap: true,
                    style: GoogleFonts.inter(
                      fontSize: 10,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        '4',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Image.asset(
                        'assets/icons/like.png',
                        height: 10,
                        width: 10,
                      ),
                      const SizedBox(width: 5),
                      Image.asset(
                        'assets/icons/reply.png',
                        height: 10,
                        width: 10,
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Replies: ',
                    style: GoogleFonts.inter(
                      color: const Color(0xffB7B7B7),
                      fontSize: 8,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Reply(isNested: true, name: 'Robert')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
