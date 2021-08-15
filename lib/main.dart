import 'package:flutter/material.dart';
import 'package:splashscreen/second_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(22),
                  child: Image.network(
                      'https://images.unsplash.com/photo-1556347961-f9521a88cb8a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'),
                ),
                ElevatedButton(
                    child: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecondScreen()),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
