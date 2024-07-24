import 'package:flutter/material.dart';
import 'package:instant_prayer/utils/constants.dart';
import 'package:instant_prayer/utils/fonts.dart';

class SidemenuButton extends StatelessWidget {
  const SidemenuButton({super.key, required this.text, required this.onPressed});

  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPressed(),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: Constants.cardDecoration,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: Fonts.subtitleFont,
            ),
            const Spacer(),
            const Icon(Icons.keyboard_arrow_right_rounded)
          ],
        ),
      ),
    );
  }
}
