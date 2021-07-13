import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldUI extends StatelessWidget {
  TextEditingController cont1 ;
  String value;
  String Label;


  TextFieldUI(this.cont1, this.Label);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(9, 5, 9, 5),
      child: TextField(
        decoration: InputDecoration(

          labelText: Label,
            hintText: Label,
          fillColor:Color(0xffd6f5f5) ,filled: true,
            border:OutlineInputBorder(

              borderRadius:BorderRadius.all(Radius.circular(8.0)) ,

       ) ,
        ),
        controller: cont1,
        onEditingComplete: () {
          print("\n" + this.value + "editing completed");
        },
        onChanged: (v) {
          this.value = v;
          print(v);
        },
        onSubmitted: (vs) {
          print("\n has been submitted is $vs");
        },
      ),
    );
  }
}
