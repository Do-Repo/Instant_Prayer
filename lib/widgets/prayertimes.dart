import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instant_prayer/utils/constants.dart';
import 'package:instant_prayer/utils/fonts.dart';

class PrayerTimes extends StatelessWidget {
  const PrayerTimes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: Constants.cardDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: double.infinity),
          Text("Prayer times", style: Fonts.subtitleFont),
          Text(
            "Based on location: ",
            style: Fonts.smallFont,
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Text(
                "Subh",
                style: GoogleFonts.getFont('Poppins'),
              ),
              Spacer(),
              Text(
                "07:00 AM",
                style: Fonts.normalFont,
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Duhr",
                style: Fonts.normalFont,
              ),
              const Spacer(),
              Text(
                "07:00 AM",
                style: Fonts.normalFont,
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Aasr",
                style: Fonts.normalFont,
              ),
              const Spacer(),
              Text(
                "07:00 AM",
                style: Fonts.normalFont,
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Maghrib",
                style: Fonts.normalFont,
              ),
              const Spacer(),
              Text(
                "07:00 AM",
                style: Fonts.normalFont,
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Ishaa",
                style: Fonts.normalFont,
              ),
              const Spacer(),
              Text(
                "07:00 AM",
                style: Fonts.normalFont,
              ),
            ],
          )
        ],
      ),
    );
  }
}
