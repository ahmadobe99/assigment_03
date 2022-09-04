import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(),
            body: Center(
              child: Column(
                children: [
                  RaisedButton(
                    elevation: 50,
                    color: Colors.amber,
                    child: Text("press here"),
                    onPressed: (() {
                      print("pressed / raised");
                    }),
                    onLongPress: () {
                      print("you presse too long ");
                    },
                  ),
                  ElevatedButton(
                      onPressed: (() {
                        print("presse here / elevated");
                      }),
                      onLongPress: () {
                        print("pressed too long / elevated");
                      },
                      style: ElevatedButton.styleFrom(elevation: 30),
                      child: Text("press here / elevated "))
                ],
              ),
            )));
  }
}
