import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpandedVotesAndComments extends StatelessWidget {
  const ExpandedVotesAndComments({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 7,
                      horizontal: 21,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                      border: Border.all(width: 1, color: Colors.white),
                    ),
                    child: Text(
                      'Vote',
                      style: GoogleFonts.inter(
                        color: const Color(0xff67AC6E),
                        fontSize: 7,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 7,
                      horizontal: 21,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      border: Border.all(width: 1, color: Colors.white),
                    ),
                    child: Text(
                      'Hate',
                      style: GoogleFonts.inter(
                        color: const Color(0xffEB2323),
                        fontSize: 7,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text(
                  '10k Voted',
                  style: GoogleFonts.inter(
                    fontSize: 8,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xffB7B7B7),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Image.asset(
                'assets/icons/chat_outline.png',
                height: 24,
                width: 24,
              ),
              Text(
                '59k Comments',
                style: GoogleFonts.inter(
                  color: const Color(0xffB7B7B7),
                  fontSize: 8,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
