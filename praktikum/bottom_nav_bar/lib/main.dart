import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int index = 2;

  final screens = [
    // HomePage(),
    // SearchPage(),
    // FavoritePage(),
    // SettingsPage(),
    // ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final items = [
      Icon(Icons.home, size: 30),
      Icon(Icons.search, size: 30),
      Icon(Icons.favorite, size: 30),
      Icon(Icons.settings, size: 30),
      Icon(Icons.person, size: 30),
    ];

    return SafeArea(
      top: false,
      child: ClipRect(
        child: Scaffold(
          extendBody: true,
          appBar: AppBar(
            title: Text("Bottom Curved Navigation Bar"),
            elevation: 0,
            centerTitle: true,
          ),
          body: screens[index],
          // body: Center(
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Text(
          //         "$index",
          //         style: TextStyle(
          //             color: Colors.white,
          //             fontSize: 120,
          //             fontWeight: FontWeight.bold),
          //       ),
          //       SizedBox(height: 16),
          //       ElevatedButton(
          //           style: ElevatedButton.styleFrom(
          //             onPrimary: Colors.black,
          //             primary: Colors.white,
          //             minimumSize: Size(250, 56),
          //           ),
          //           onPressed: () {
          //             final navigationState = navigationKey.currentState!;
          //             navigationState.setPage(0);
          //           },
          //           child: Text(
          //             "Go to 0",
          //             style: TextStyle(fontSize: 12),
          //           ))
          //     ],
          //   ),
          // ),
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(iconTheme: IconThemeData(color: Colors.white)),
            child: CurvedNavigationBar(
              key: navigationKey,
              color: Colors.blue,
              buttonBackgroundColor: Colors.purple,
              backgroundColor: Colors.transparent,
              height: 60,
              animationCurve: Curves.easeInOut,
              animationDuration: Duration(milliseconds: 300),
              index: index,
              items: items,
              onTap: (index) => setState(() {
                this.index = index;
              }),
            ),
          ),
        ),
      ),
    );
  }
}
