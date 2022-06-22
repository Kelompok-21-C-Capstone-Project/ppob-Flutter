import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payzone_2/components/constant.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Profile", style: appBar),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 165,
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
            left: 10,
            right: 10,
            top: 12,
            child: Container(
              margin: EdgeInsets.all(20),
              height: 150,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: const [
                    BoxShadow(color: Colors.grey, blurRadius: 5)
                  ]),
              child: _profileName(),
            ),
          ),
          // Positioned(
          //   left: 30,
          //   right: 30,
          //   top: 32,
          //   child: _menuDanInfo(),
          // ),
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
    return ListView.builder(
      itemCount: customIcon.length,
      itemBuilder: (context, index) {
        return ListTile(
            leading: CircleAvatar(
                backgroundImage: NetworkImage("${customIcon[index].icon}")),
            title: Text("${customIcon[index].nama}"),
            trailing: Icon(Icons.arrow_forward_ios));
      },
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
  CustomIcon(
    nama: "Keluar",
    icon: Icons.logout,
  ),
];
