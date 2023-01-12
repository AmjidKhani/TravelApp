import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travelapp/welcomepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
       
        primarySwatch: Colors.blue,
                  textTheme: GoogleFonts.plusJakartaSansTextTheme(

              Theme.of(context).textTheme),
              useMaterial3: true

      ),
      home: WelcomePage());
  }
}

