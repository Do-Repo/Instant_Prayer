import 'package:flutter/material.dart';
import 'package:instant_prayer/utils/constants.dart';
import 'package:instant_prayer/utils/fonts.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Constants.cardDecoration,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [Text("Instant Prayer", style: Fonts.titleFont), const Spacer(), const Icon(Icons.settings)],
            ),
          ),
        ],
      ),
    );
  }
}
