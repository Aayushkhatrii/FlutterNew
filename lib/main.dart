import 'package:flutter/material.dart';
import 'package:flutter_projects/pages/home_page.dart';
import 'package:flutter_projects/pages/login_page.dart';
import 'package:flutter_projects/utils/routes.dart';
// import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: ThemeData(
          primarySwatch: Colors.lime,
          // fontFamily: GoogleFonts,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      initialRoute: "/",
      routes: {
        "/" : (context)=> LoginPage(),
        MyRoutes.homeRoute : (context)=> HomePage(),
        MyRoutes.loginRoute : (context)=> LoginPage(),
      },
    );
  }
}
