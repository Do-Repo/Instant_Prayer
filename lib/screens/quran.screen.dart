import 'package:flutter/material.dart';
import 'package:instant_prayer/provider/app.provider.dart';
import 'package:instant_prayer/utils/constants.dart';
import 'package:instant_prayer/models/chapter.model.dart';
import 'package:instant_prayer/screens/error.screen.dart';
import 'package:instant_prayer/services/quran.service.dart';
import 'package:collection/collection.dart';
import 'package:instant_prayer/utils/fonts.dart';
import 'package:provider/provider.dart';

class QuranScreen extends StatefulWidget {
  const QuranScreen({super.key});

  @override
  State<QuranScreen> createState() => _QuranScreenState();
}

class _QuranScreenState extends State<QuranScreen> with AutomaticKeepAliveClientMixin {
  late Future<List<Chapter>> getChapters;
  Chapter? selectedChapter;

  @override
  void initState() {
    getChapters = QuranService.getChapters().then((value) {
      setState(() => selectedChapter = value.first);
      return value;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: FutureBuilder(
                future: getChapters,
                builder: (context, snapshot) {
                  if (snapshot.connectionState != ConnectionState.done) {
                    return const Column(children: [LinearProgressIndicator()]);
                  } else if (snapshot.hasError) {
                    return ErrorScreen(
                        error: snapshot.error.toString(),
                        tryAgain: () {
                          setState(() {
                            getChapters = QuranService.getChapters();
                          });
                        });
                  } else {
                    return SingleChildScrollView(
                        child: Column(
                      children: snapshot.data!
                          .mapIndexed((i, e) => Container(
                                color: i.isEven ? Theme.of(context).primaryColor.withOpacity(0.1) : null,
                                child: ListTile(
                                  title: Text(e.name ?? '',
                                      textDirection: TextDirection.rtl, overflow: TextOverflow.ellipsis),
                                  subtitle: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [Text(e.englishName ?? ''), Text(e.englishNameTranslation ?? '')],
                                  ),
                                  onTap: () {
                                    setState(() {
                                      selectedChapter = snapshot.data![i];
                                    });
                                  },
                                ),
                              ))
                          .toList(),
                    ));
                  }
                },
              )),
          Container(height: double.infinity, width: 1, color: Colors.black12),
          Flexible(flex: 2, fit: FlexFit.tight, child: SurahScreen(selectedChapter: selectedChapter)),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class SurahScreen extends StatefulWidget {
  const SurahScreen({super.key, required this.selectedChapter});
  final Chapter? selectedChapter;
  @override
  State<SurahScreen> createState() => _SurahScreenState();
}

class _SurahScreenState extends State<SurahScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: (widget.selectedChapter?.number != null)
              ? SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 90.0),
                    child: FutureBuilder(
                        future: QuranService.getSurah(widget.selectedChapter!.number!),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState != ConnectionState.done) {
                            return const Center(child: CircularProgressIndicator());
                          } else if (snapshot.hasError) {
                            return ErrorScreen(
                                error: snapshot.error.toString(),
                                tryAgain: () {
                                  setState(() {});
                                });
                          } else {
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              children: snapshot.data!.first.ayahs!
                                  .mapIndexed((index, ayah) => Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 15),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            const SizedBox(height: 15),
                                            Text(
                                              ayah.text.toString(),
                                              style: const TextStyle(fontSize: 19),
                                              textAlign: TextAlign.center,
                                            ),
                                            const SizedBox(height: 15),
                                            Text(
                                              snapshot.data![1].ayahs![index].text.toString(),
                                              style: const TextStyle(fontSize: 18),
                                              textAlign: TextAlign.center,
                                            ),
                                            if (index != snapshot.data!.first.ayahs!.length)
                                              Container(
                                                  height: 1,
                                                  margin: const EdgeInsets.only(bottom: 10),
                                                  width: double.infinity,
                                                  color: Colors.black12)
                                          ],
                                        ),
                                      ))
                                  .toList(),
                            );
                          }
                        }),
                  ),
                )
              : Container(),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: Constants.cardDecoration,
            child: Row(
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
                const Spacer(),
                (widget.selectedChapter != null)
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(widget.selectedChapter!.name ?? "",
                              style: Fonts.titleFont,
                              textDirection: TextDirection.rtl,
                              overflow: TextOverflow.ellipsis),
                          Text(
                            widget.selectedChapter!.englishNameTranslation ?? "",
                            style: Fonts.subnormalFont,
                          )
                        ],
                      )
                    : Container(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
