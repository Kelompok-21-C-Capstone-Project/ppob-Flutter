import 'package:flutter/material.dart';
import 'package:homescreen3/screens/components/body.dart';
import 'package:homescreen3/screens/components/produk.dart';
import 'package:homescreen3/screens/components/promo.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // int _currentIndex = 0;

  //plan 1
  // final screen = [
  // Body(),
  // ProdukScreen()
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          "Payzone",
          style: Theme.of(context).textTheme.caption!.copyWith(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
      //plan 1
      // body: screen[_currentIndex],

      //plan 2
      body: ProdukScreen(),

      //plan 3
      // body: Body(),
      bottomNavigationBar: BottomNavigationBar(
        //urutan dari bottom nav bar
        // currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        // backgroundColor: Colors.amber,
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
        // onTap: (index) {
        //   setState(() {
        //     //untuk set _current index urutan keberapa ke index yang ada
        //     _currentIndex = index;
        //   });
        // },

        //plan 2
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => ProdukScreen()));
              break;
            case 1:
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => ProdukScreen()));
              break;
            case 2:
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => ProdukScreen()));
          }
        },
      ),
    );
  }
}
