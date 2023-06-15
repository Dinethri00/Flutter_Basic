import 'package:flutter/material.dart';

import 'calender.dart';



class Leave extends StatelessWidget {
  const Leave({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Leave Approval",
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
        leading: IconButton(
          icon: Image.asset("images/back.png"),
          onPressed: () {
            // Navigator.push(
            //     context, MaterialPageRoute(builder: (context) => const HomePage()));
          },
        ),
        elevation: 0.0,
      ),
      body: Container(

        margin: const EdgeInsets.all(10),

        child: Column(
          children: const [
            Text("New Leave",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),),
            SizedBox(height: 20,),

            Text("Leave Type",
              style: TextStyle(
                fontSize: 15.0,
              ),),



          ],
        ),
      ),
    );
  }
}