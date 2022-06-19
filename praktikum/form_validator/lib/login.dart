import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formkey = GlobalKey<FormState>();
  String name = "";

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 40, right: 40),
        child: Form(
          key: formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height * 0.04),
              Text(
                "Here to Get",
                style: TextStyle(fontSize: 30),
              ),
              Text(
                "Welcome",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              TextFormField(
                  decoration: InputDecoration(labelText: "Enter your Name"),
                  validator: (value) {
                    // r = raw string
                    // $ untuk mengakhiri string
                    if (value!.isEmpty ||
                        !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                      return "Please enter correct name";
                    } else {
                      return null;
                    }
                  }),
              SizedBox(
                height: height * 0.05,
              ),
              TextFormField(
                  decoration:
                      InputDecoration(labelText: "Enter your Phone Number"),
                  validator: (value) {
                    // r = raw string
                    // $ untuk mengakhiri string
                    if (value!.isEmpty ||
                        !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$')
                            .hasMatch(value)) {
                      return "Please enter correct phone number";
                    } else {
                      return null;
                    }
                  }),
              SizedBox(
                height: height * 0.05,
              ),
              TextFormField(
                  decoration: InputDecoration(labelText: "Enter your Email"),
                  validator: (value) {
                    // r = raw string
                    // $ untuk mengakhiri string
                    if (value!.isEmpty ||
                        !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}$')
                            .hasMatch(value)) {
                      return "Please enter correct Email";
                    } else {
                      return null;
                    }
                  }),
              SizedBox(
                height: height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 22, color: Colors.purple[50]),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (formkey.currentState!.validate()) {
                          // check data apakah valid
                          final snackBar =
                              SnackBar(content: Text("Submit Again!"));
                          _scaffoldKey.currentState!.showSnackBar(snackBar);
                        }
                      },
                      child: Icon(Icons.arrow_right_alt))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
