import 'package:flutter/material.dart';
import 'package:payzone_2/components/constant.dart';
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
  // late bool newUser;

  saveData(String id) async {
    logindata = await SharedPreferences.getInstance();
    logindata.setString("email", inputEmail.text.toString());
    logindata.setString("password", inputPassword.text.toString());
    logindata.setString("name", inputNama.text.toString());
    logindata.setString("phone", inputPhone.text.toString());
    logindata.setString("username", inputUsername.text.toString());
    logindata.setString("id", id.toString());
    // logindata.setString("token", token);
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<UserViewModel>(context);
    return Scaffold(
      backgroundColor: putih,
      appBar: AppBar(
        backgroundColor: putih,
        title: Text(
          "Daftar",
          style: appBar,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // const SizedBox(
            //   height: 20,
            // ),
            Form(
              key: formKey,
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: inputNama,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'masukkan nama anda';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        // prefixIcon: const Icon(Icons.lock),
                        hintStyle: title2Robo,
                        labelStyle: title1Robo,
                        labelText: "Nama",
                        hintText: "User Aja",
                        border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5)))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: inputUsername,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'masukkan username anda';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        // prefixIcon: const Icon(Icons.lock),
                        hintStyle: title2Robo,
                        labelStyle: title1Robo,
                        labelText: "Username",
                        hintText: "@useraja",
                        border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5)))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: inputPhone,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'masukkan nomor handphone anda';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        // prefixIcon: const Icon(Icons.lock),
                        hintStyle: title2Robo,
                        labelStyle: title1Robo,
                        labelText: "Nomor Handaphone",
                        hintText: "081234567890",
                        border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5)))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: inputEmail,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'masukkan email anda';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        // prefixIcon: const Icon(Icons.lock),
                        hintStyle: title2Robo,
                        labelStyle: title1Robo,
                        labelText: "Email",
                        hintText: "user@gmail.com",
                        border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5)))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: inputPassword,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'masukkan password anda';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        // prefixIcon: const Icon(Icons.lock),
                        hintStyle: title2Robo,
                        labelStyle: title1Robo,
                        labelText: "Password",
                        hintText: "supersecret",
                        border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5)))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      if (formKey.currentState!.validate()) {
                        await viewModel.regisUser(
                          inputEmail.text.toString(),
                          inputNama.text.toString(),
                          inputPassword.text.toString(),
                          inputPhone.text.toString(),
                          inputUsername.text.toString(),
                        );
                        if (viewModel.resultRegis != null) {
                          // saveData();
                          saveData("${viewModel.resultRegis.id}");

                          Navigator.pushNamed(context, "/login");
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
                      padding: const EdgeInsets.fromLTRB(120, 12, 120, 12),
                    ),
                    child: Text(
                      'Daftar',
                      style: buttonText,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sudah memiliki akun ?',
                        style: register,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/login");
                        },
                        child: Text('Masuk', style: register2),
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



  //buat cek regis dan logiS

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