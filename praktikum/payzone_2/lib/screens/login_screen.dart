import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:payzone_2/components/constant.dart';
import 'package:payzone_2/service/login_api_services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  TextEditingController inputAkunId = TextEditingController();
  TextEditingController inputPassword = TextEditingController();

  bool isLoading = false;
  late SharedPreferences logindata;

  @override
  void dispose() {
    inputAkunId.dispose();
    inputPassword.dispose();
    super.dispose();
  }

  //cara 1 (eror)
  // void login(String id, password) async {
  //   try {
  //     Response response = await post(
  //         Uri.parse(
  //             "https://app.swaggerhub.com/apis/ixtza/payzone/1.0.0#/auth"),
  //         body: {
  //           "id": id,
  //           "password": password,
  //         });

  //     if (response.statusCode == 200) {
  //       var data = jsonDecode(response.body.toString());
  //       print(data);
  //       print("Success!");
  //     } else {
  //       print("Failed!");
  //     }
  //   } catch (e) {
  //     print(e.toString());
  //   }
  // }

//cara 2 (eror)
  login(String id, password) async {
    Map data = {
      "id": id,
      "password": password,
    };
    var jsonData = null;
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var response = await Dio().post(
        "https://app.swaggerhub.com/apis/ixtza/payzone/1.0.0#/auth",
        data: data);

    if (response.statusCode == 200) {
      jsonData = json.decode(response.data);
      setState(() {
        isLoading = false;
      });
      sharedPreferences.setString("token", jsonData["token"]);
      Navigator.of(context).pushNamedAndRemoveUntil("/home", (route) => false);
    } else {
      setState(() {
        isLoading = false;
      });
      print(response.data);
    }
  }

  //cara 3
  // Future<void> loginUsers() async {
  //   if (formKey.currentState!.validate()) {
  //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //       content: const Text("Processing"),
  //       backgroundColor: primaryKuning2,
  //     ));

  //     //get response from LoginApiServices
  //     dynamic res =
  //         await LoginApiServices().login(inputAkunId.text, inputPassword.text);
  //     ScaffoldMessenger.of(context).hideCurrentSnackBar();
  //   }
  // }

  //cara 4 (function untuk manggil login api) youtube
  // Future<void> postLogin() async {
  //   if (inputAkunId.text.isEmpty && inputPassword.text.isNotEmpty) {
  //     var response = await Dio().post(
  //         "https://app.swaggerhub.com/apis/ixtza/payzone/1.0.0#/users/userAuthenctication",
  //         data: ({
  //           "id": inputAkunId.text,
  //           "password": inputPassword.text,
  //         }));
  //     if (response.statusCode == 200) {
  //       Navigator.pushNamed(context, "/home");
  //     } else {
  //       ScaffoldMessenger.of(context)
  //           .showSnackBar(SnackBar(content: const Text("Invalid Credential")));
  //     }
  //   } else {
  //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //       content: const Text("Black Field Not Allowed"),
  //     ));
  //   }
  // }

  // cara 5 google
  Future<void> loginUsers() async {
    if (formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: const Text('Processing Data'),
        // backgroundColor: Colors.green.shade300,
      ));

// get response dari login api services
      final res =
          await LoginApiServices().login(inputAkunId.text, inputPassword.text);
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      if (res.id != null) {
        logindata.setInt("id", res.id!);
        logindata.setString("token", res.token!);
        Navigator.pushNamed(context, "/home");
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: const Text("Invalid Credential")));
      }

      // if (res['ErrorCode'] == null) {
      //   Navigator.pushNamed(context, "/home");
      //   // String accessToken = res['access_token'];
      //   // Navigator.push(
      //   //     context,
      //   //     MaterialPageRoute(
      //   //         builder: (context) => HomeScreen(accesstoken: accessToken)));
      // } else {
      //   //if an error occurs, show snackbar with error message
      //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      //     content: Text('Error: ${res['Message']}'),
      //     backgroundColor: Colors.red.shade300,
      //   ));
      // }
    }
  }

  @override
  void initState() {
    checkLogin();
    super.initState();
  }

  void checkLogin() async {
    logindata = await SharedPreferences.getInstance();
    final id = logindata.getInt("id");
    if (id != 0 && id != null) {
      Navigator.pushNamed(context, "/home");
      print("id : $id");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: putih,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Sign in',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: inputAkunId,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your username';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.person),
                      hintText: 'Enter your Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: inputPassword,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                    maxLines: 1,
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.lock),
                      hintText: 'Enter your password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      loginUsers();
                      // postLogin();

                      bool visit = await getVisit();
                      setVisit();
                      if (visit == true) {
                        // case ketika not the first time user datang
                        Navigator.pushNamed(context, "/home");
                      } else {
                        // case ketika user pertama kali datang
                        Navigator.pushNamed(context, "/profile");
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.purple[300],
                      padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                    ),
                    child: const Text(
                      'Sign in',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Not registered yet?'),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Create an account',
                            style: TextStyle(color: Colors.purple)),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

setVisit() async {
  SharedPreferences visit = await SharedPreferences.getInstance();
  visit.setBool("alreadyVisit", true);
}

getVisit() async {
  SharedPreferences visit = await SharedPreferences.getInstance();
  bool? alreadyVisit = visit.getBool("alreadyVisit") ?? false;
  return alreadyVisit;
}
