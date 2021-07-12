import 'package:flutter/material.dart';

import 'TextFieldUI.dart';

class MyHomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('lec_10 App'),
      ),
      body: Container(
        child: Column(
          children: [
            TextFieldUI(Label:"email"),

          ],
        ),
      ),
    );
  }
}
