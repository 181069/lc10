
import 'package:flutter/material.dart';
class lec11 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          ElevatedButton(onPressed:(){
            Navigator.of(context).pop("hello this messege is from the other page");
          } , child: Text("sign out"))
        ],
      ) ,
    );
  }
}
