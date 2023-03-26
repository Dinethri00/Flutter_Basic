import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold  (
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text('Flutter App'),
          backgroundColor: Colors.teal[900],
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/diamond.png'),
          ),
        )
      ),
    )
  );
}

