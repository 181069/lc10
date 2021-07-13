import 'package:flutter/material.dart';

import 'Lec13.dart';
import 'MyHomePage.dart';
import 'error.dart';
import 'lec12.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        //'Lec13':(context)=> lec13(),
      },
      onGenerateRoute: (RouteSettings routeSetting) {
        String name = routeSetting.name;
        var arguments = routeSetting.arguments;
        if (name == 'lec13') {
          return MaterialPageRoute(builder: (context) {
            return lec13();
          });
        }
        else if (name == 'lec12') {
          return MaterialPageRoute(builder: (context) {
            return lec12();
          });
        }
        else if (name == 'lec11') {
          return MaterialPageRoute(builder: (context) {
            return lec12();
          });
        }
        else {
          return MaterialPageRoute(builder: (context) {
            return errorPge();
          });
        }
      },
      title: 'Flutter Demo',
      theme: ThemeData(

      ),
      home: MyHomePage(),
    );
  }


}
