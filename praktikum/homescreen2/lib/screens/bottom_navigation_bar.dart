import 'package:flutter/material.dart';
import 'package:homescreen2/screens/home.dart';

class ButtonNavBar extends StatefulWidget {
  const ButtonNavBar({Key? key}) : super(key: key);

  @override
  State<ButtonNavBar> createState() => _ButtonNavBarState();
}

class _ButtonNavBarState extends State<ButtonNavBar> {
  int _currentIndex = 0;

  final screen = [
    Home(),
  ];

// NANTI COBA PINDAHI BOTTOM NAVBAR KE HOME

  // final tabs = [
  //   Center(child: Text("Home")),
  //   Center(child: Text("History")),
  //   Center(child: Text("Akun")),
  //   Center(child: Text("Home")),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: screen[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        //urutan dari bottom nav bar
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        //backgroundColor: Colors.amber,
        iconSize: 30,
        //selectedFontSize: 30,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.amber,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: "History",
            backgroundColor: Colors.amber,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Akun",
            backgroundColor: Colors.amber,
          ),
        ],
        onTap: (index) {
          setState(() {
            //untuk set _current index urutan keberapa ke index yang ada
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
