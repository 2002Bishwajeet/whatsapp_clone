import 'package:flutter/material.dart';
import 'package:whatsapp_clone/WhatsAppHome.dart';
import 'package:google_fonts/google_fonts.dart';

Future<void> main() async {
 
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
    title: "WhatApp" ,
    theme: new ThemeData(
      backgroundColor: Color(0xff075E54),
      primaryColor: Color(0xff075E54),
      indicatorColor: Colors.white,
      primaryColorDark: Color(0xFF128C7E),
      accentColor: Color.fromRGBO(37 ,211, 102,-240),
      fontFamily: GoogleFonts.lato().fontFamily,
      primaryIconTheme: IconThemeData(
          color: Colors.white,
        ),
      
    
    ),
    home: WhatsAppHome(),
    debugShowCheckedModeBanner: false,
    );
  }
}
