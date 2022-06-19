import 'package:flutter/material.dart';
import 'package:homescreen2/screens/body.dart';
import 'package:homescreen2/screens/home3.dart';

class HomeScreem extends StatefulWidget {
  HomeScreem({Key? key}) : super(key: key);

  @override
  State<HomeScreem> createState() => _HomeScreemState();
}

class _HomeScreemState extends State<HomeScreem> {
  int _currentIndex = 0;
  final screen = [Body()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          "Payzone",
          style: Theme.of(context).textTheme.caption!.copyWith(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
      body: SingleChildScrollView(child: screen[_currentIndex]),
      // body: Home3(),
      bottomNavigationBar: BottomNavigationBar(
        //urutan dari bottom nav bar
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        //backgroundColor: Colors.amber,
        iconSize: 30,
        //selectedFontSize: 30,
        items: const [
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
