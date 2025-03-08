import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('first page'),
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: Column(
          children: [
            DrawerHeader(
                child: Icon(
              Icons.favorite,
              size: 48,
              color: Colors.deepPurple,
            ),
            ),
            //home page
            ListTile(
              leading: Icon(Icons.home),
              title: Text('H O M E'),
               onTap:(){
                //pop drawer first
                Navigator.pop(context);
                Navigator.pushNamed(context, '/homepage');
               } ,
            ),
            //SETTINGS PAGE
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('S E T T I N G S'),
              onTap:(){
                 //pop drawer first
                Navigator.pop(context);
                Navigator.pushNamed(context, '/settingspage');
              } ,
            )

          ],
        ),
      ),
    );
  }
}
