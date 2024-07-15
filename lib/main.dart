import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    TextEditingController _usernameController = TextEditingController();
    const borderSide = BorderSide(
      color: Colors.black,
      width: 3,
    );
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
            ),
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                label: Text(
                  'E-mail',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: borderSide,
                ),
                // enabledBorder: OutlineInputBorder(
                //     borderSide: BorderSide(color: Colors.red))),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  print(_usernameController.text);
                  _usernameController.clear();
                },
                child: Text('Show'))
          ],
        ),
      ),
    );
  }
}
