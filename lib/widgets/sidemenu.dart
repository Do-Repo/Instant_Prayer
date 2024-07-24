import 'package:flutter/material.dart';
import 'package:instant_prayer/widgets/prayertimes.dart';
import 'package:instant_prayer/widgets/sidemenubutton.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key, required this.tabController});
  final TabController tabController;
  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    PrayerTimes(),
                    SizedBox(height: 10),
                    SidemenuButton(
                      text: "Start Prayer",
                      onPressed: () {
                        widget.tabController.animateTo(0);
                      },
                    ),
                    SizedBox(height: 10),
                    SidemenuButton(
                      text: "Read Quran",
                      onPressed: () {
                        widget.tabController.animateTo(1);
                      },
                    ),
                    SizedBox(height: 10),
                    SidemenuButton(
                      text: "About Us",
                      onPressed: () {
                        widget.tabController.animateTo(2);
                      },
                    ),
                    SizedBox(height: 10),
                    SidemenuButton(
                      text: "Donate",
                      onPressed: () {
                        widget.tabController.animateTo(3);
                      },
                    ),
                    SizedBox(height: 10),
                    SidemenuButton(
                      text: "Report Problem",
                      onPressed: () {
                        widget.tabController.animateTo(4);
                      },
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
