import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  TextEditingController cont1 = TextEditingController();
  String value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('lec_10 App'),
      ),
      body: Container(
        child: Column(
          children: [
            TextField(
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
            ElevatedButton(
                onPressed: () {
                  print("value is ${cont1.text}");
                },
                child: Text("print text"))
          ],
        ),
      ),
    );
  }
}
