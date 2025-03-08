import 'package:flutter/material.dart';
import 'package:nikeapp/Components/bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //navigation logic
  //selected index
  int _selectedIndex=0;
  //this method updates selected index
  void navigateBottomBar(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
 //oon tab of any of the tabs it sets the index to its indexvalue
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(onTabChange: (index )=> navigateBottomBar(index),),
    );
}}

// navigateBottomBar what ever u put inside is talking about the value whhich is the indesx numbering of each tab opposite to the way u undersatnd function