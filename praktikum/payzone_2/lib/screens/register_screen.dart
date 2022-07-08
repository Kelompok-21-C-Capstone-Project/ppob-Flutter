import 'package:flutter/material.dart';
import 'package:payzone_2/components/constant.dart';
import 'package:payzone_2/view%20model/registrasi_view_model.dart';
import 'package:payzone_2/view%20model/user_view_model.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController inputNama = TextEditingController();
  TextEditingController inputEmail = TextEditingController();
  TextEditingController inputPassword = TextEditingController();
  TextEditingController inputUsername = TextEditingController();
  TextEditingController inputPhone = TextEditingController();

  @override
  void dispose() {
    inputEmail.dispose();
    inputPassword.dispose();
    inputNama.dispose();
    inputPhone.dispose();
    inputUsername.dispose();
    super.dispose();
  }

  late SharedPreferences logindata;
  late bool newUser;

  saveData() async {
    logindata = await SharedPreferences.getInstance();
    logindata.setString("email", inputEmail.text.toString());
    logindata.setString("password", inputPassword.text.toString());
    logindata.setString("nama", inputNama.text.toString());
    logindata.setString("phone", inputPhone.text.toString());
    logindata.setString("username", inputUsername.text.toString());
    logindata.setString("status", "status");
    logindata.setString("token", "token");
  }

  @override
  void initState() {
    // checkLogin();
    super.initState();
  }

  // void checkLogin() async {
  //   logindata = await SharedPreferences.getInstance();
  //   newUser = logindata.getBool("login") ?? true;

  //   // if (newUser) {
  //   //   Navigator.pushNamedAndRemoveUntil(
  //   //       context, HomeScreen.route, (route) => false);
  //   // }
  // }

  // checkLogin() async {
  //   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  //   String? token = sharedPreferences.getString("token");

  //   print("token $token");
  //   if (token != null) {
  //     Navigator.pushNamed(context, "/home");
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<UserViewModel>(context);
    return Scaffold(
      backgroundColor: putih,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Sign up',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Form(
              key: formKey,
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: inputUsername,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: 'Enter your name',
                      prefixIcon: const Icon(Icons.person_add),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: inputPhone,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your phone number';
                      }
                      return null;
                    },
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: 'Enter your phone number',
                      prefixIcon: const Icon(Icons.phone_android_outlined),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: inputNama,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your username';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.person),
                      hintText: 'Enter your Username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: inputEmail,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: 'Enter your Email',
                      prefixIcon: const Icon(Icons.email),
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
                        return 'Please enter your Password';
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
                      if (formKey.currentState!.validate()) {
                        await viewModel.regisUser(
                            inputEmail.text,
                            inputPassword.text,
                            inputNama.text,
                            inputPhone.text,
                            inputUsername.text);
                        if (viewModel.resultRegis == ['status']) {
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

                      // bool visit = await getVisit();
                      // setVisit();
                      // if (visit == true) {
                      //   // case ketika not the first time user datang
                      //   Navigator.of(context).pushNamed(HomeScreen.route);
                      // } else {
                      //   // case ketika user pertama kali datang
                      //   Navigator.pushNamed(
                      //       context, UserProfileScreenScreen.route);
                      // }
                    },
                    style: ElevatedButton.styleFrom(
                      primary: primaryKuning1,
                      padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                    ),
                    child: Text(
                      'Sign up',
                      style: buttonText,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already registered?',
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/login");
                        },
                        child: Text('Sign in', style: buttonText),
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

// setVisit() async {
//   SharedPreferences visit = await SharedPreferences.getInstance();
//   visit.setBool("alreadyVisit", true);
// }

// getVisit() async {
//   SharedPreferences visit = await SharedPreferences.getInstance();
//   bool? alreadyVisit = visit.getBool("alreadyVisit") ?? false;
//   return alreadyVisit;
// }
