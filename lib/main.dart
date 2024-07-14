import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Field Demo'),
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                // textInputAction: TextInputAction.done,
                //textInputAction: TextInputAction.search,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    hintText: 'Enter your name',
                    border: OutlineInputBorder(
                      // borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 5))),
              ),
            ),
            TextField(
              controller: TextEditingController(),
              //obscureText: true,
              //controller: TextEditingController(text: 'farhan'),
              onSubmitted: (context) {
                print(context);
              },
              // onChanged: (value) => print(value),
            ),
            TextField(
              onChanged: (value) {
                print(value);
              },
            )
          ],
        ),
      ),
    );
  }
}
