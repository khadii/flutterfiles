import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('first page'),
        
      ),
body: Center(
  child: ElevatedButton(onPressed: (){
    //navigate to second page
    Navigator.pushNamed(context, '/secondpage');
  }, child: Text('go to second page')),
),
    );
  }
}