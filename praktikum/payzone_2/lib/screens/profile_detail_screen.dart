import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payzone_2/components/constant.dart';

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
        padding: const EdgeInsets.all(24),
        child: Form(
            child: Column(
          children: [
            const SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                  hintStyle: title2Robo,
                  labelStyle: title1Robo,
                  labelText: "Username",
                  hintText: "BangunKhan",
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                  hintStyle: title2Robo,
                  labelStyle: title1Robo,
                  labelText: "Password",
                  hintText: "******",
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                  hintStyle: title2Robo,
                  labelStyle: title1Robo,
                  labelText: "Nomor Handphone",
                  hintText: "08xxxx",
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                  hintStyle: title2Robo,
                  labelStyle: title1Robo,
                  labelText: "Email",
                  hintText: "Bangun@gmail.com",
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
            const SizedBox(height: 20),
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
