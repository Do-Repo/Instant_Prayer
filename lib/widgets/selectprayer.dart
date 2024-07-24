import 'package:flutter/material.dart';
import 'package:instant_prayer/utils/fonts.dart';

class SelectPrayer extends StatelessWidget {
  const SelectPrayer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("1- Pick which prayer you're planning on praying.",
          style: Fonts.normalFont.copyWith(fontWeight: FontWeight.bold)),
      const SizedBox(height: 8),
      Row(
        children: [
          Radio(value: 1, groupValue: 1, onChanged: (v) {}),
          Text("Subh (2 Rakaat)", style: Fonts.normalFont),
        ],
      ),
      Row(
        children: [
          Radio(value: 1, groupValue: 2, onChanged: (v) {}),
          Text("Dhuhr (4 Rakaat)", style: Fonts.normalFont),
        ],
      ),
      Row(
        children: [
          Radio(value: 1, groupValue: 3, onChanged: (v) {}),
          Text("Aasr (4 Rakaat)", style: Fonts.normalFont),
        ],
      ),
      Row(
        children: [
          Radio(value: 1, groupValue: 3, onChanged: (v) {}),
          Text("Maghrib (3 Rakaat)", style: Fonts.normalFont),
        ],
      ),
      Row(
        children: [
          Radio(value: 1, groupValue: 3, onChanged: (v) {}),
          Text("Ishaa (4 Rakaat)", style: Fonts.normalFont),
        ],
      ),
      const SizedBox(height: 10),
    ]);
  }
}
