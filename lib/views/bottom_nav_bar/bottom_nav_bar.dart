import 'package:flutter/material.dart';

const List<String> imagePath = [
  'assets/icons/home.png',
  'assets/icons/bulb.png',
  'assets/icons/write.png',
  'assets/icons/notification.png',
  'assets/icons/user.png',
];

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: imagePath
            .map(
              (e) => Image.asset(
                e,
                width: 24,
                height: 24,
              ),
            )
            .toList(),
      ),
    );
  }
}
