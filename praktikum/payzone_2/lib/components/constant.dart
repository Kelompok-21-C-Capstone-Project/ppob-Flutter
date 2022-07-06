import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Const Warna
Color primaryKuning1 = const Color.fromARGB(255, 244, 179, 26);
Color primaryKuning2 = const Color.fromARGB(255, 255, 224, 79);
Color onSurface = const Color.fromARGB(255, 33, 33, 33);
Color onPrimary = const Color.fromARGB(255, 20, 61, 89);
Color variant = const Color.fromARGB(255, 65, 102, 136);
Color putih = const Color.fromARGB(255, 255, 255, 255);
Color eror = const Color.fromARGB(255, 176, 0, 32);
Color fontColor = const Color.fromARGB(255, 29, 29, 29);
Color namaProduk = const Color.fromARGB(255, 0, 0, 0);
Color bgTotal = const Color.fromARGB(255, 252, 235, 195);
Color icon = const Color.fromARGB(153, 25, 25, 25);

// Const Font
TextStyle appBar = GoogleFonts.ptSans(
    fontStyle: FontStyle.normal,
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: onSurface);

// Font ptSans
TextStyle title1Sans = GoogleFonts.ptSans(
    fontSize: 8, fontWeight: FontWeight.w400, color: primaryKuning1);
TextStyle title2Sans = GoogleFonts.ptSans(
    fontSize: 9, fontWeight: FontWeight.w500, color: fontColor);
TextStyle title3Sans = GoogleFonts.ptSans(
    fontSize: 10, fontWeight: FontWeight.w400, color: fontColor);
TextStyle title4Sans = GoogleFonts.ptSans(
    fontSize: 10, fontWeight: FontWeight.w500, color: fontColor);
TextStyle title5Sans = GoogleFonts.ptSans(
    fontSize: 10, fontWeight: FontWeight.w700, color: fontColor);
TextStyle title6Sans = GoogleFonts.ptSans(
    fontSize: 11, fontWeight: FontWeight.w400, color: fontColor);
TextStyle title7Sans = GoogleFonts.ptSans(
    fontSize: 12, fontWeight: FontWeight.w400, color: fontColor);
TextStyle title8Sans = GoogleFonts.ptSans(
    fontSize: 12, fontWeight: FontWeight.w500, color: fontColor);
TextStyle title9Sans = GoogleFonts.ptSans(
    fontSize: 12, fontWeight: FontWeight.w700, color: fontColor);
TextStyle title10Sans = GoogleFonts.ptSans(
    fontSize: 13, fontWeight: FontWeight.w700, color: fontColor);
TextStyle title11Sans = GoogleFonts.ptSansCaption(
    fontSize: 12, fontWeight: FontWeight.w400, color: fontColor);
TextStyle title12Sans = GoogleFonts.ptSans(
    fontSize: 13, fontWeight: FontWeight.w400, color: fontColor);
TextStyle title13Sans =
    GoogleFonts.ptSans(fontSize: 8, fontWeight: FontWeight.w400);

// Font Ubuntu
TextStyle title1Ubuntu =
    GoogleFonts.ubuntu(fontSize: 9, fontWeight: FontWeight.w500);
TextStyle title2Ubuntu =
    GoogleFonts.ubuntu(fontSize: 10, fontWeight: FontWeight.w400);
TextStyle title3Ubuntu = GoogleFonts.ubuntu(
    fontSize: 10, fontWeight: FontWeight.w500, color: namaProduk);
TextStyle title4Ubuntu = GoogleFonts.ubuntu(
    fontSize: 12, fontWeight: FontWeight.w500, color: namaProduk);
TextStyle title5Ubuntu = GoogleFonts.ubuntu(
    fontSize: 15, fontWeight: FontWeight.w500, color: primaryKuning2);
TextStyle title6Ubuntu =
    GoogleFonts.ubuntu(fontSize: 12, fontWeight: FontWeight.w400);
TextStyle title7Ubuntu = GoogleFonts.ubuntu(
    fontSize: 9, fontWeight: FontWeight.w500, color: onPrimary);
TextStyle title8Ubuntu = GoogleFonts.ubuntu(
    fontSize: 15, fontWeight: FontWeight.w500, color: onSurface);
TextStyle title9Ubuntu = GoogleFonts.ubuntu(
    fontSize: 12, fontWeight: FontWeight.w400, color: namaProduk);

// font roboto

TextStyle title1Robo = GoogleFonts.roboto(
    fontSize: 9, fontWeight: FontWeight.w400, color: fontColor);
TextStyle title2Robo =
    GoogleFonts.roboto(fontSize: 10, fontWeight: FontWeight.w400);

//font button
TextStyle buttonText = GoogleFonts.ptSans(
    fontStyle: FontStyle.normal,
    fontSize: 12,
    fontWeight: FontWeight.w700,
    color: onPrimary);

// font status
TextStyle selesai = GoogleFonts.ptSans(
    fontStyle: FontStyle.normal,
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: variant);

TextStyle pending = GoogleFonts.ptSans(
    fontStyle: FontStyle.normal,
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: primaryKuning1);

TextStyle gagal = GoogleFonts.ptSans(
    fontStyle: FontStyle.normal,
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: eror);

TextStyle unactive =
    GoogleFonts.ubuntu(fontSize: 10, fontWeight: FontWeight.w500, color: icon);
TextStyle unactive2 =
    GoogleFonts.ubuntu(fontSize: 10, fontWeight: FontWeight.w400, color: icon);
