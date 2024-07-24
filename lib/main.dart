import 'package:flutter/material.dart';
import 'package:instant_prayer/provider/app.provider.dart';
import 'package:instant_prayer/widgets/mainstructure.dart';
import 'package:instant_prayer/widgets/sidemenu.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ApplicationProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Homepage(),
      builder: (context, child) => ResponsiveBreakpoints.builder(child: child!, breakpoints: [
        const Breakpoint(start: 451, end: 800, name: TABLET),
        const Breakpoint(start: 801, end: 1920, name: DESKTOP),
      ]),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 5, vsync: this, initialIndex: 1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (ResponsiveBreakpoints.of(context).isDesktop) {
      return Scaffold(
        body: Row(
          children: [
            Flexible(
              flex: 1,
              child: SideMenu(tabController: tabController),
            ),
            Flexible(
              flex: 3,
              child: MainStructure(tabController: tabController),
            )
          ],
        ),
      );
    } else {
      return Scaffold(body: MainStructure(tabController: tabController));
    }
  }
}
