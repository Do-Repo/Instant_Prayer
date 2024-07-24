import 'package:flutter/material.dart';
import 'package:instant_prayer/utils/fonts.dart';

class SelectRakaa extends StatefulWidget {
  const SelectRakaa({super.key});

  @override
  State<SelectRakaa> createState() => _SelectRakaaState();
}

class _SelectRakaaState extends State<SelectRakaa> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("3- Pick a Surah for each Rakaa.", style: Fonts.normalFont.copyWith(fontWeight: FontWeight.bold)),
        const SizedBox(height: 15),
        Row(
          children: [
            Flexible(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("First Rakaa:", style: Fonts.subnormalFont.copyWith(fontWeight: FontWeight.bold)),
                  DropdownButtonFormField(
                      value: 1,
                      decoration: InputDecoration(border: OutlineInputBorder()),
                      items: [
                        DropdownMenuItem(value: 1, child: Text("First surah")),
                        DropdownMenuItem(value: 2, child: Text("First surah")),
                        DropdownMenuItem(value: 3, child: Text("First surah")),
                        DropdownMenuItem(value: 4, child: Text("First surah"))
                      ],
                      onChanged: null),
                ],
              ),
            ),
            SizedBox(width: 10),
            Flexible(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Start at Eyah:", style: Fonts.subnormalFont.copyWith(fontWeight: FontWeight.bold)),
                  DropdownButtonFormField(
                      value: 1,
                      decoration: InputDecoration(border: OutlineInputBorder()),
                      items: [
                        DropdownMenuItem(value: 1, child: Text("1")),
                        DropdownMenuItem(value: 2, child: Text("2")),
                        DropdownMenuItem(value: 3, child: Text("3")),
                        DropdownMenuItem(value: 4, child: Text("4"))
                      ],
                      onChanged: null),
                ],
              ),
            ),
            SizedBox(width: 10),
            Flexible(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Stop at Eyah:", style: Fonts.subnormalFont.copyWith(fontWeight: FontWeight.bold)),
                  DropdownButtonFormField(
                      value: 1,
                      decoration: InputDecoration(border: OutlineInputBorder()),
                      items: [
                        DropdownMenuItem(value: 1, child: Text("1")),
                        DropdownMenuItem(value: 2, child: Text("2")),
                        DropdownMenuItem(value: 3, child: Text("3")),
                        DropdownMenuItem(value: 4, child: Text("4"))
                      ],
                      onChanged: null),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Flexible(
              flex: 2,
              child: DropdownButtonFormField(
                  value: 1,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                  items: [
                    DropdownMenuItem(value: 1, child: Text("First surah")),
                    DropdownMenuItem(value: 2, child: Text("First surah")),
                    DropdownMenuItem(value: 3, child: Text("First surah")),
                    DropdownMenuItem(value: 4, child: Text("First surah"))
                  ],
                  onChanged: (v) {}),
            ),
            SizedBox(width: 10),
            Flexible(
              flex: 1,
              child: DropdownButtonFormField(
                  value: 1,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                  items: [
                    DropdownMenuItem(value: 1, child: Text("1")),
                    DropdownMenuItem(value: 2, child: Text("2")),
                    DropdownMenuItem(value: 3, child: Text("3")),
                    DropdownMenuItem(value: 4, child: Text("4"))
                  ],
                  onChanged: (v) {}),
            ),
            SizedBox(width: 10),
            Flexible(
              flex: 1,
              child: DropdownButtonFormField(
                  value: 1,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                  items: [
                    DropdownMenuItem(value: 1, child: Text("1")),
                    DropdownMenuItem(value: 2, child: Text("2")),
                    DropdownMenuItem(value: 3, child: Text("3")),
                    DropdownMenuItem(value: 4, child: Text("4"))
                  ],
                  onChanged: (v) {}),
            ),
          ],
        ),
        SizedBox(height: 10)
      ],
    );
  }
}
