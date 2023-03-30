import 'package:flutter/material.dart';

void main() {
  runApp(
      MyApp()
  );
}
  class MyApp extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold  (
          backgroundColor: Colors.teal,
          body: SafeArea(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/dp.jpg'),
                ),
                Text(
                    'Dinethri Gunawardhana',
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Pacifico',
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
                ),
              ],

            ),

          ),
        ),
      );
    }
  }



