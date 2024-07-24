import 'package:flutter/material.dart';
import 'package:instant_prayer/utils/fonts.dart';
import 'package:instant_prayer/widgets/outlinedbutton.dart';
import 'package:instant_prayer/widgets/selectprayer.dart';
import 'package:instant_prayer/widgets/selectrakaa.dart';
import 'package:instant_prayer/widgets/selectreciter.dart';
import 'package:responsive_framework/responsive_framework.dart';

class StartPrayerScreen extends StatefulWidget {
  const StartPrayerScreen({super.key});

  @override
  State<StartPrayerScreen> createState() => _StartPrayerScreenState();
}

class _StartPrayerScreenState extends State<StartPrayerScreen> with AutomaticKeepAliveClientMixin {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: (ResponsiveBreakpoints.of(context).isDesktop)
          ? null
          : AppBar(
              title: Text("Start Prayer", style: Fonts.titleFont),
            ),
      body: Column(
        children: [
          if (!ResponsiveBreakpoints.of(context).isDesktop) const LinearProgressIndicator(),
          Flexible(
            child: Scrollbar(
              thumbVisibility: true,
              controller: _scrollController,
              thickness: 3,
              child: SingleChildScrollView(
                  controller: _scrollController,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SelectPrayer(),
                        SelectReciter(),
                        SelectRakaa(),
                        Row(
                          children: [
                            Spacer(),
                            CustomOutlinedButton(
                              text: "Start Prayer",
                              onTap: () {
                                print("oi");
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
