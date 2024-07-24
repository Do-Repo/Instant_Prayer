import 'package:flutter/material.dart';
import 'package:instant_prayer/utils/constants.dart';
import 'package:instant_prayer/screens/quran.screen.dart';
import 'package:instant_prayer/screens/startprayer.screen.dart';
import 'package:instant_prayer/widgets/customappbar.dart';
import 'package:instant_prayer/widgets/prayertimes.dart';
import 'package:instant_prayer/widgets/sidemenubutton.dart';
import 'package:responsive_framework/responsive_framework.dart';

class MainStructure extends StatefulWidget {
  const MainStructure({super.key, required this.tabController});
  final TabController tabController;
  @override
  State<MainStructure> createState() => _MainStructureState();
}

class _MainStructureState extends State<MainStructure> with TickerProviderStateMixin {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (ResponsiveBreakpoints.of(context).isDesktop) {
        if (Navigator.of(context).canPop()) {
          Navigator.of(context).popUntil((route) => route.isFirst);
          widget.tabController.animateTo(0);
        }
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (ResponsiveBreakpoints.of(context).isDesktop) {
      return Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10, right: 10),
          child: Column(
            children: [
              const CustomAppbar(),
              const SizedBox(height: 10),
              Flexible(
                child: Container(
                    decoration: Constants.cardDecoration,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(2),
                      child: TabBarView(
                        controller: widget.tabController,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          StartPrayerScreen(),
                          QuranScreen(),
                          Container(color: Colors.yellow),
                          Container(color: Colors.green),
                          Container(color: Colors.purple),
                        ],
                      ),
                    )),
              )
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: CustomAppbar(),
            ),
            Flexible(
                child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    PrayerTimes(),
                    SizedBox(height: 10),
                    SidemenuButton(
                      text: "Start Prayer",
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) => StartPrayerScreen()));
                      },
                    ),
                    SizedBox(height: 10),
                    SidemenuButton(
                      text: "Read Quran",
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) => QuranScreen()));
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
              ),
            )),
          ],
        ),
      );
    }
  }
}
