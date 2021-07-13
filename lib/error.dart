
import 'package:flutter/material.dart';
class errorPge extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body:Column(
        children: [
          ElevatedButton(onPressed:(){
            Navigator.of(context).pop("hello this messege is from the other page");
          } , child: Text("error page"))
        ],
      ) ,
    );
  }
}
