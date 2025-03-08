import 'package:drawer_navigation/pages/first_page.dart';
import 'package:drawer_navigation/pages/home_page.dart';
import 'package:drawer_navigation/pages/settings_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/firstpage':(context)=>FirstPage(),
        '/homepage':(context)=>HomePage(),
        '/settingspage':(context)=>SettingsPage()
      },
    );
}}

