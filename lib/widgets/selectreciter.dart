import 'package:flutter/material.dart';
import 'package:instant_prayer/utils/fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SelectReciter extends StatefulWidget {
  const SelectReciter({super.key});

  @override
  State<SelectReciter> createState() => _SelectReciterState();
}

class _SelectReciterState extends State<SelectReciter> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("2- Pick a reciter.", style: Fonts.normalFont.copyWith(fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        if (ResponsiveBreakpoints.of(context).isDesktop)
          Row(
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: CircleAvatar(),
                      title: Text("Name Surname", style: Fonts.normalFont),
                      subtitle: Text("Where he is from", style: Fonts.subnormalFont),
                      trailing: IconButton.outlined(onPressed: () {}, icon: Icon(Icons.volume_up)),
                    ),
                    ListTile(
                      leading: CircleAvatar(),
                      title: Text("Name Surname", style: Fonts.normalFont),
                      subtitle: Text("Where he is from", style: Fonts.subnormalFont),
                      trailing: IconButton.outlined(onPressed: () {}, icon: Icon(Icons.volume_up)),
                    ),
                    ListTile(
                      leading: CircleAvatar(),
                      title: Text("Name Surname", style: Fonts.normalFont),
                      subtitle: Text("Where he is from", style: Fonts.subnormalFont),
                      trailing: IconButton.outlined(onPressed: () {}, icon: Icon(Icons.volume_up)),
                    )
                  ],
                ),
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: CircleAvatar(),
                      title: Text("Name Surname", style: Fonts.normalFont),
                      subtitle: Text("Where he is from", style: Fonts.subnormalFont),
                      trailing: IconButton.outlined(onPressed: () {}, icon: Icon(Icons.volume_up)),
                    ),
                    ListTile(
                      leading: CircleAvatar(),
                      title: Text("Name Surname", style: Fonts.normalFont),
                      subtitle: Text("Where he is from", style: Fonts.subnormalFont),
                      trailing: IconButton.outlined(onPressed: () {}, icon: Icon(Icons.volume_up)),
                    ),
                    ListTile(
                      leading: CircleAvatar(),
                      title: Text("Name Surname", style: Fonts.normalFont),
                      subtitle: Text("Where he is from", style: Fonts.subnormalFont),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Theme.of(context).primaryColor, width: 2),
                          borderRadius: BorderRadius.circular(5)),
                      trailing: IconButton.outlined(onPressed: () {}, icon: Icon(Icons.volume_up)),
                    )
                  ],
                ),
              )
            ],
          ),
        if (!ResponsiveBreakpoints.of(context).isDesktop)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: CircleAvatar(),
                title: Text("Name Surname", style: Fonts.normalFont),
                subtitle: Text("Where he is from", style: Fonts.subnormalFont),
                trailing: IconButton.outlined(onPressed: () {}, icon: Icon(Icons.volume_up)),
              ),
              ListTile(
                leading: CircleAvatar(),
                title: Text("Name Surname", style: Fonts.normalFont),
                subtitle: Text("Where he is from", style: Fonts.subnormalFont),
                trailing: IconButton.outlined(onPressed: () {}, icon: Icon(Icons.volume_up)),
              ),
              ListTile(
                leading: CircleAvatar(),
                title: Text("Name Surname", style: Fonts.normalFont),
                subtitle: Text("Where he is from", style: Fonts.subnormalFont),
                trailing: IconButton.outlined(onPressed: () {}, icon: Icon(Icons.volume_up)),
              ),
              ListTile(
                leading: CircleAvatar(),
                title: Text("Name Surname", style: Fonts.normalFont),
                subtitle: Text("Where he is from", style: Fonts.subnormalFont),
                trailing: IconButton.outlined(onPressed: () {}, icon: Icon(Icons.volume_up)),
              ),
              ListTile(
                leading: CircleAvatar(),
                title: Text("Name Surname", style: Fonts.normalFont),
                subtitle: Text("Where he is from", style: Fonts.subnormalFont),
                trailing: IconButton.outlined(onPressed: () {}, icon: Icon(Icons.volume_up)),
              ),
              ListTile(
                leading: CircleAvatar(),
                title: Text("Name Surname", style: Fonts.normalFont),
                subtitle: Text("Where he is from", style: Fonts.subnormalFont),
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Theme.of(context).primaryColor, width: 2),
                    borderRadius: BorderRadius.circular(5)),
                trailing: IconButton.outlined(onPressed: () {}, icon: Icon(Icons.volume_up)),
              )
            ],
          ),
        const SizedBox(height: 10)
      ],
    );
  }
}
