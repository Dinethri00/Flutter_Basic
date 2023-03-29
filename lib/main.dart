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
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                height: 100.0,
                width: 100.0,
                color: Colors.white,
                child: Text('Container 1'),
              ),
                SizedBox(height: 20.0, width: 20.0),
                Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.amber,
                  child: Text('Container 2'),
                ),
                Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.deepPurple,
                  child: Text('Container 3'),
                ),


              ],
            ),

          ),
        ),
      );
    }
  }



