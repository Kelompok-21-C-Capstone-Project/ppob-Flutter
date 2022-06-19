import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserProfileScreenScreen extends StatefulWidget {
  const UserProfileScreenScreen({Key? key}) : super(key: key);

  static const String route = '/profile';

  @override
  State<UserProfileScreenScreen> createState() =>
      _UserProfileScreenScreenState();
}

class _UserProfileScreenScreenState extends State<UserProfileScreenScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        backgroundColor: Colors.purple[200],
        elevation: 0,
        // leading: Icon(Icons.menu, color: Colors.white),
        title: Text("Profile".toUpperCase()),
        actions: [
          IconButton(
              onPressed: () {
                FirebaseAuth.instance.signOut().then((value) {
                  print("Sign out");
                  Navigator.pushNamedAndRemoveUntil(
                      context, "/login", (route) => false);
                });
                // Navigator.pushNamed(context, "/login");
                // Navigator.popAndPushNamed(context, "/login");
                // Navigator.of(context).pushNamed("/login");
              },
              icon: Icon(Icons.logout)),
          // IconButton(onPressed: () {}, icon: Icon(Icons.home))
        ],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/doodle_5.jpg"),
              radius: 100,
            ),
            SizedBox(height: 20),
            Row(
              children: [
                // Icon(Icons.person),
                SizedBox(height: 15),
                Expanded(
                  child: Center(
                    child: Text(
                      "Welcome, ",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                )
              ],
            ),
            // SizedBox(height: 15),
            // Row(
            //   children: [
            //     Icon(Icons.email),
            //     SizedBox(height: 15),
            //     Expanded(child: Text("${email}"))
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
