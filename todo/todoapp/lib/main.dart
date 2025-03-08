import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
// import 'package:hive_flutter/adapters.dart';x
import 'package:todoapp/Pages/home_page.dart';

void main()async {
  //INITIALIZE A HIVE
await Hive.initFlutter();
//open box
var box=await Hive.openBox("mybox");
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomePage(),
    );
  }
} 




