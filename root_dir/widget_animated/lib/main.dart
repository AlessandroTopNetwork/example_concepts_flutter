import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _width = 300; // var private like _nameVar underscore before name var

  double _height = 300;

  double _padding = 8.0;

  Color _color = Colors.orange;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.greenAccent,
            title: Text('App bar'),
          ),
          body: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedPadding(
                duration: Duration(seconds: 1),
                padding: EdgeInsets.all(_padding),
                child: AnimatedContainer(
                  width: _width,
                  height: _height,
                  color: _color,
                  duration: Duration(seconds: 1),
                  child: Text('test me'),
                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                // _color = _color.value != Colors.black.value
                //     ? Colors.black
                //     : Colors.red;
                final random = Random();
                _height = random.nextInt(300).toDouble();
                _width = random.nextInt(300).toDouble();
                _color = Color.fromARGB(
                    random.nextInt(255),
                    random.nextInt(255),
                    random.nextInt(255),
                    1);
                _padding = random.nextInt(33).toDouble();
              });
            },
            child: Icon(Icons.sync),
            tooltip: 'Cancghe color try me',
          )),
    );
  }
}
