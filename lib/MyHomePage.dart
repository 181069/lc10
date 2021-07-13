import 'package:flutter/material.dart';
import 'package:lc10/router.dart';

import 'Lec13.dart';
import 'TextFieldUI.dart';

class MyHomePage extends StatelessWidget {

TextEditingController cntEmail=TextEditingController();
TextEditingController cntPassword=TextEditingController();
@override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('lec_10 App'),
        ),
        body: Container(
          child: Column(
            children: [
              TextFieldUI(cntEmail,"email"),
              TextFieldUI(cntPassword,"password"),
              ElevatedButton(onPressed: ()async{
                String R= await Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return lec13();
                }));
                print(R);
              }, child: Text("go to home page")),
              ElevatedButton(onPressed: ()async{
                var R= await Navigator.of(context).pushNamed('Lec13');
                print(R);
              }, child: Text("go to home page whith named route")),
              ElevatedButton(onPressed: ()async{
               AppRouter.router.pushFunction(lec13());
              }, child: Text("go ")),
            ],
          ),
        ),
      ),
    );
  }
}
