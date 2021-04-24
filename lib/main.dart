import 'package:flutter/material.dart';
import 'package:whatsapp_clone/WhatsAppHome.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
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
      accentColor: Color.fromRGBO(37 ,211, 102,-240),
      fontFamily: GoogleFonts.lato().fontFamily,
      
    
    ),
    home: WhatsAppHome(),
    debugShowCheckedModeBanner: false,
    );
  }
}
