import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_page/constant.dart';

class ProfileDetail extends StatefulWidget {
  const ProfileDetail({Key? key}) : super(key: key);

  @override
  State<ProfileDetail> createState() => _ProfileDetailState();
}

class _ProfileDetailState extends State<ProfileDetail> {
  final formKey = GlobalKey<FormState>();
  TextEditingController inputNama = TextEditingController();
  TextEditingController inputPass = TextEditingController();
  TextEditingController inputNoHp = TextEditingController();
  TextEditingController inputEmail = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Profile",
          style: Theme.of(context).textTheme.caption!.copyWith(
                fontFamily: GoogleFonts.ptSans().fontFamily,
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Form(
            child: Column(
          children: [
            SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: "Username",
                  hintText: "BangunKhan",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: "Password",
                  hintText: "******",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: "Nomor Handphone",
                  hintText: "08xxxx",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: "Email",
                  hintText: "Bangun@gmail.com",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: primaryKuning1,
                  padding: const EdgeInsets.fromLTRB(104, 12, 104, 12),
                ),
                child: Text(
                  "Ubah Profile",
                  style: TextStyle(
                      color: onPrimary,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      fontFamily: GoogleFonts.ptSans().fontFamily),
                ))
          ],
        )),
      ),
    );
  }
}
