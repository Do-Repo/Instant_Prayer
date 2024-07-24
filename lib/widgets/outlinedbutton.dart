import 'package:flutter/material.dart';
import 'package:instant_prayer/utils/fonts.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({super.key, required this.text, required this.onTap, this.fullWidth});
  final String text;
  final Function() onTap;
  final bool? fullWidth;

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).primaryColor;

    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: InkWell(
        onTap: onTap,
        onHover: (v) {},
        child: Container(
          width: (fullWidth ?? false) ? double.infinity : null,
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(5), border: Border.all(width: 2, color: primaryColor)),
          child: Text(
            text,
            style: Fonts.subtitleFont.copyWith(color: primaryColor),
          ),
        ),
      ),
    );
  }
}
