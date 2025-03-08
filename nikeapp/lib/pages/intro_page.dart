import 'package:flutter/material.dart';
import 'package:nikeapp/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,

      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset('lib/Images/nikelogo.png', height: 240),
              ),
              //title
              const SizedBox(height: 48),
              Text(
                'Just Do It',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              //subtitle
              const SizedBox(height: 24),
              Text(
                'Brand New Sneakers and custom kicks made with prenium quality',
                style: TextStyle(color: Colors.grey, fontSize: 16),
                textAlign: TextAlign.center,
              ),
          
              //start button
              const SizedBox(height: 48,),
              GestureDetector(
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder:(context)=>HomePage())),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12)
                  ),
                  padding: EdgeInsets.all(25),
                  child: Center(child: Text('Shop Now',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)),
                ),
              )
              
            ],
          ),
        ),
      ),
    );
  }
}
