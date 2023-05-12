import 'package:flutter/material.dart';

import 'home_page.dart';

class Leave extends StatelessWidget {
  String selectedValue;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text(
              "Leave Approval",
              style: TextStyle(color: Colors.black, fontSize: 22),
            ),
            leading: IconButton(
              icon: Image.asset("images/back.png"),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const HomePage()));
              },
            ),
            elevation: 0.0,
          ),

          body: Container(
            child: DropdownButton<String>(
                value: selectedValue,
                onChanged: (value){
                  setState(() {
                    selectedValue = value;
                  });
                },
                items: ["tt1", "tt2", "tt3"]
                    .map<DropdownMenuItem<String>>((e) => DropdownMenuItem(
                  child: Text(e.toString()),
                  value: e,
                )).toList()
            ),

          )
      ),);
  }

  void setState(Null Function() param0) {}
}