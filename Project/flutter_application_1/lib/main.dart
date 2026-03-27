import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void incrementar() {
    //cont = cont +1;
    print('click');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unitecnar',
      home: Scaffold(
        appBar: AppBar(title: Text('Unitecnar 5.0')),
        body: Center(child: Text('sebastian p')),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            incrementar();
          },
          child: Icon(Icons.plus_one),
        ),
      ),
    );
  }
}
