import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  TextEditingController inputNama = TextEditingController();
  TextEditingController inputEmail = TextEditingController();
  TextEditingController inputPassword = TextEditingController();

  @override
  void dispose() {
    inputNama.dispose();
    inputEmail.dispose();
    inputPassword.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
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
                    controller: inputNama,
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
                      if (formKey.currentState!.validate()) {}
                      FirebaseAuth.instance
                          .signInWithEmailAndPassword(
                              email: inputEmail.text,
                              password: inputPassword.text)
                          .then((value) {
                        Navigator.pushNamed(context, "/");
                      }).onError((error, stackTrace) {
                        print("Eror ${error.toString()}");
                      });

                      // final isValidForm = formKey.currentState!.validate();

                      // if (isValidForm) {
                      //   Navigator.pushNamedAndRemoveUntil(
                      //       context, "/", (route) => false);
                      // }
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
                        onPressed: () {
                          Navigator.pushNamed(context, "/regis");
                        },
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

// setVisit() async {
//   SharedPreferences visit = await SharedPreferences.getInstance();
//   visit.setBool("alreadyVisit", true);
// }

// getVisit() async {
//   SharedPreferences visit = await SharedPreferences.getInstance();
//   bool? alreadyVisit = visit.getBool("alreadyVisit") ?? false;
//   return alreadyVisit;
// }
