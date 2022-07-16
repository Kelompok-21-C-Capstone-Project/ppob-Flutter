import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payzone_2/components/constant.dart';
import 'package:payzone_2/view%20model/user_view_model.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late SharedPreferences logindata;
  late bool newUser;
  // int idPengguna = 0;
  String email = "";
  String pass = "";
  String tokenUser = "";
  String akunId = "";
  String name = "";
  String phone = "";
  String username = "";

  @override
  void initState() {
    getData();
    deleteData();
    super.initState();
  }

  getData() async {
    logindata = await SharedPreferences.getInstance();

    setState(() {
      email = logindata.getString("email").toString();
      print("email: $email");
      pass = logindata.getString("password").toString();
      print("pass: $pass");
      tokenUser = logindata.getString("token").toString();
      print("token $tokenUser");
      akunId = logindata.getString("id").toString();
      print("id : $akunId");
      name = logindata.getString("name").toString();
      print("name : $name");
      phone = logindata.getString("phone").toString();
      print("phone : $phone");
      username = logindata.getString("username").toString();
      print("username : $username");
    });
  }

  deleteData() async {
    logindata = await SharedPreferences.getInstance();
    logindata.remove("username");
    logindata.remove("password");
    logindata.remove("token");
    logindata.remove("id");
    logindata.remove("name");
    logindata.remove("phone");
    logindata.remove("email");
    // logindata.clear();
  }

  @override
  Widget build(BuildContext context) {
    // final viewModel = Provider.of<UserViewModel>(context);
    return Scaffold(
      backgroundColor: putih,
      appBar: AppBar(
        backgroundColor: putih,
        title: Text("Profile", style: appBar),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 144,
                width: 360,
                decoration: BoxDecoration(color: primaryKuning1),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            left: 5,
            right: 5,
            top: 5,
            child: Consumer<UserViewModel>(
              builder: (context, value, child) => Container(
                margin: const EdgeInsets.all(20),
                height: 133,
                width: 312,
                decoration: BoxDecoration(
                    color: putih,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(color: Colors.grey, blurRadius: 5)
                    ]),
                child: Column(
                  children: [
                    const SizedBox(height: 15),
                    Icon(
                      Icons.account_circle,
                      color: onPrimary,
                      size: 40.0,
                    ),
                    const SizedBox(height: 10),
                    // Text("${value.resultAkun.email}", style: title8Ubuntu),

                    Text("${email}", style: title8Ubuntu),
                    const SizedBox(height: 5),
                    // Text(
                    //   "087864420972",
                    //   style: TextStyle(
                    //       fontFamily: GoogleFonts.ptSans().fontFamily,
                    //       fontWeight: FontWeight.w400,
                    //       fontSize: 12,
                    //       color: onSurface),
                    // ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 5,
            right: 5,
            top: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Menu & Informasi", style: title10Sans),
                _menuDanInfo(),
                ListTile(
                  onTap: () {
                    deleteData();
                    // logindata.clear();
                    Navigator.pushNamed(context, "/login");
                  },
                  leading: Icon(
                    Icons.logout,
                    color: onSurface,
                  ),
                  title: Text("Keluar", style: title3Sans),
                  trailing:
                      Icon(Icons.arrow_forward_ios, color: onSurface, size: 12),
                ),
                Center(
                  child: Image.asset(
                    "assets/images/logo.png",
                    fit: BoxFit.fill,
                    height: 39,
                    width: 75,
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Created By",
                      style: title3Sans,
                    ),
                    const Text(" | "),
                    Text("Cinema 21", style: title3Sans),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _profileName() {
    return Column(
      children: [
        SizedBox(height: 15),
        Icon(
          Icons.account_circle,
          color: onPrimary,
          size: 60.0,
        ),
        SizedBox(height: 10),
        Text(
          "Bangun Akmalu Hakim",
          style: TextStyle(
              fontFamily: GoogleFonts.ubuntu().fontFamily,
              fontWeight: FontWeight.w500,
              fontSize: 15,
              color: onSurface),
        ),
        SizedBox(height: 5),
        Text(
          "087864420972",
          style: TextStyle(
              fontFamily: GoogleFonts.ptSans().fontFamily,
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: onSurface),
        ),
      ],
    );
  }

  Widget _menuDanInfo() {
    return Container(
      height: 200,
      child: ListView.builder(
        itemCount: customIcon.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(customIcon[index].icon, color: onSurface),
            title: Text("${customIcon[index].nama}", style: title3Sans),
            trailing: Icon(Icons.arrow_forward_ios, color: onSurface, size: 12),
            onTap: () {
              Navigator.pushNamed(context, "/profileDetail");
            },
          );
        },
      ),
    );
  }
}

class CustomIcon {
  String? nama;
  IconData? icon;

  CustomIcon({this.nama, this.icon});
}

List<CustomIcon> customIcon = [
  CustomIcon(
    nama: "Profile Detail",
    icon: Icons.account_circle,
  ),
  CustomIcon(
    nama: "Syarat dan Ketentuan",
    icon: Icons.account_circle,
  ),
  CustomIcon(
    nama: "Kebijakan dan Privasi",
    icon: Icons.account_circle,
  ),
  // CustomIcon(
  //   nama: "Keluar",
  //   icon: Icons.logout,
  // ),
];



  // Future<Map<String, dynamic>> getData(String token, String id) async {
  //   logindata = await SharedPreferences.getInstance();
  //   return {
  //     "email": logindata.getString("username")!,
  //     "pass": logindata.getString("password")!,
  //     "token": logindata.getString("token")!,
  //     "akunId": logindata.getString("akunId")!,
  //   };
  // }

  // Future<Map<String, dynamic>> getUserData() async {
  //   // dynamic userRes;
  //   // userRes = await UserApiServices().akun(akunId, token);
  //   logindata = await SharedPreferences.getInstance();
  //   setState(() {
  //     email = logindata.getString("username")!;
  //     print("email: $email");
  //     pass = logindata.getString("password")!;
  //     print("pass: $pass");
  //     token = logindata.getString("token")!;
  //     print("token $token");
  //   });
  //   // return userRes;
  // }