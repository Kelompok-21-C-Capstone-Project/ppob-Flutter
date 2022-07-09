import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:payzone_2/components/constant.dart';
import 'package:payzone_2/view%20model/user_view_model.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../view model/login_view_model.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  TextEditingController inputEmail = TextEditingController();
  TextEditingController inputPassword = TextEditingController();

  late SharedPreferences logindata;
  String email = "";
  String pass = "";

  bool _isloading = false;

  @override
  void dispose() {
    inputEmail.dispose();
    inputPassword.dispose();
    super.dispose();
  }

  saveData() async {
    logindata = await SharedPreferences.getInstance();
    logindata.setString("username", inputEmail.text.toString());
    logindata.setString("password", inputPassword.text.toString());
    logindata.setString("identifier", "identifier");
    logindata.setString("token", "token");
  }

  //         sharedPreferences.setString("token", jsonresponse["token"]);
  //         sharedPreferences.setString("email", jsonresponse["email"]);
  //         sharedPreferences.setString("name", jsonresponse["name"]);
  //         sharedPreferences.setString("role", jsonresponse["role"]);

  // signIn(String email, String password) async {
  //   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  //   Map body = {
  //     "email": email,
  //     "password": password,
  //   };
  //   var jsonresponse;
  //   var res =
  //       await Dio().post("https://payzone.herokuapp.com/v1/auth", data: body);

  //   if (res.statusCode == 200) {
  //     jsonresponse = json.decode(res.data);

  //     print("Response : ${res.statusCode}");
  //     print("Response : ${res.data}");

  //     if (jsonresponse != null) {
  //       setState(() {
  //         sharedPreferences.setString("token", jsonresponse["token"]);
  //         sharedPreferences.setString("email", jsonresponse["email"]);
  //         sharedPreferences.setString("name", jsonresponse["name"]);
  //         sharedPreferences.setString("role", jsonresponse["role"]);

  //         _isloading = false;
  //       });

  //       sharedPreferences.setString("token", jsonresponse["token"]);
  //       Navigator.pushNamed(context, "/home");
  //     } else {
  //       setState(() {
  //         _isloading = false;
  //       });
  //       print("Response : ${res.data}");
  //     }
  //   }
  // }

  // getLogin() async {
  //   // logindata = await SharedPreferences.getInstance();
  //   // email = logindata.getString("username")!;
  //   // pass = logindata.getString("password")!;
  //   // print(email);
  //   // print(pass);
  // }

  @override
  void initState() {
    // checkLogin();
    super.initState();
  }

  // void checkLogin() async {
  //   logindata = await SharedPreferences.getInstance();
  //   final id = logindata.getInt("identifier");
  //   if (id != 0 && id != null) {
  //     Navigator.pushNamed(context, "/home");
  //     print("id : $id");
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<UserViewModel>(context);
    return Scaffold(
        backgroundColor: putih,
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
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
                      controller: inputEmail,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your Email';
                        }
                        return null;
                      },
                      maxLines: 1,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.person),
                        hintText: 'Enter your Email',
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
                        // loginUsers();
                        // postLogin();

                        if (formKey.currentState!.validate()) {
                          await viewModel.loginUser(
                              inputEmail.text, inputPassword.text);
                          if (viewModel.resultUser != null) {
                            saveData();
                            Navigator.pushNamed(context, "/home");
                          } else {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: const Text("Error"),
                                content: Text("Coba Lagi!"),
                                actions: [
                                  FlatButton(
                                    child: const Text("OK"),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ],
                              ),
                            );
                          }
                        }

                        // if (formKey.currentState!.validate()) {
                        //   await viewModel.loginUser(
                        //       inputEmail.text, inputPassword.text);

                        //   SharedPreferences pref =
                        //       await SharedPreferences.getInstance();
                        //   String? token = pref.getString("token");
                        //   saveData();
                        //   // print(token);

                        //   if (token != null) {
                        //     Navigator.pushNamed(context, "/home");
                        //     // ignore: null_aware_in_condition
                        //   } else {
                        //     showDialog(
                        //       context: context,
                        //       builder: (context) => AlertDialog(
                        //         title: const Text("Error"),
                        //         content: Text("Coba Lagi!"),
                        //         actions: [
                        //           FlatButton(
                        //             child: const Text("OK"),
                        //             onPressed: () {
                        //               Navigator.pop(context);
                        //             },
                        //           ),
                        //         ],
                        //       ),
                        //     );
                        //   }
                        // }

                        // if (formKey.currentState!.validate()) {
                        //   await viewModel.login(
                        //       inputEmail.text, inputPassword.text);
                        //   if (viewModel.resultUser.id != null) {
                        //     saveData();
                        //     Navigator.pushNamed(context, "/home");
                        //   } else {
                        //     showDialog(
                        //         context: context,
                        //         builder: (context) => const AlertDialog(
                        //               title: Text('Error'),
                        //               content:
                        //                   Text('Invalid username or password'),
                        //               actions: [
                        //                 // FlatButton(
                        //                 //   onPressed: () {
                        //                 //     Navigator.pop(context);
                        //                 //   },
                        //                 //   child: const Text('OK'),
                        //                 // )
                        //               ],
                        //             ));
                        //   }
                        // }
                        // saveData();

                        // bool visit = await getVisit();
                        // setVisit();
                        // if (visit == true) {
                        //   // case ketika not the first time user datang
                        //   Navigator.pushNamed(context, "/home");
                        // } else {
                        //   // case ketika user pertama kali datang
                        //   Navigator.pushNamed(context, "/profile");
                        // }
                      },
                      style: ElevatedButton.styleFrom(
                        primary: primaryKuning1,
                        padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                      ),
                      child: Text('Sign in', style: buttonText),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Not registered yet?'),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/register");
                          },
                          child: Text('Create an account', style: buttonText),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

// setVisit() async {
//   SharedPreferences visit = await SharedPreferences.getInstance();
//   visit.setBool("alreadyVisit", true);
// }

// getVisit() async {
//   SharedPreferences visit = await SharedPreferences.getInstance();
//   bool? alreadyVisit = visit.getBool("alreadyVisit") ?? false;
//   return alreadyVisit;
// }


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
  // login(String id, password) async {
  //   Map data = {
  //     "id": id,
  //     "password": password,
  //   };
  //   var jsonData = null;
  //   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  //   var response = await Dio().post(
  //       "https://app.swaggerhub.com/apis/ixtza/payzone/1.0.0#/auth",
  //       data: data);

  //   if (response.statusCode == 200) {
  //     jsonData = json.decode(response.data);
  //     setState(() {
  //       isLoading = false;
  //     });
  //     sharedPreferences.setString("token", jsonData["token"]);
  //     Navigator.of(context).pushNamedAndRemoveUntil("/home", (route) => false);
  //   } else {
  //     setState(() {
  //       isLoading = false;
  //     });
  //     print(response.data);
  //   }
  // }

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
  // Future<void> loginUsers() async {
  //   if (formKey.currentState!.validate()) {
  //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //       content: const Text('Processing Data'),
  //       // backgroundColor: Colors.green.shade300,
  //     ));

// get response dari login api services
  // final res =
  //     await LoginApiServices().login(inputAkunId.text, inputPassword.text);
  // ScaffoldMessenger.of(context).hideCurrentSnackBar();
  // if (res.id != null) {
  //   logindata.setInt("id", res.id!);
  //   logindata.setString("token", res.token!);
  //   Navigator.pushNamed(context, "/home");
  // } else {
  //   ScaffoldMessenger.of(context)
  //       .showSnackBar(SnackBar(content: const Text("Invalid Credential")));
  // }

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
  //   }
  // }
