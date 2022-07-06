import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payzone_2/components/constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late SharedPreferences logindata;
  // int idPengguna = 0;
  String email = "";
  String pass = "";

  @override
  void initState() {
    // logout();
    getData();
    super.initState();
  }

  // void logout() async {
  //   logindata = await SharedPreferences.getInstance();
  //   setState(() {
  //     idPengguna = logindata.getInt("id")!;
  //   });
  // }

  getData() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      email = logindata.getString("username")!;
      pass = logindata.getString("password")!;
    });
  }

  deleteData() async {
    logindata = await SharedPreferences.getInstance();
    logindata.remove("username");
    logindata.remove("password");
  }

  @override
  Widget build(BuildContext context) {
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
            child: Container(
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
                    logindata.remove("username");
                    logindata.remove("password");
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
