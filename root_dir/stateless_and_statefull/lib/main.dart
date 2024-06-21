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
  int count = 0;

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
          title: Text('Test App'),
        ),
        body: Center(
          child: Text('Test add number $count', style: TextStyle(fontSize: 45, fontWeight: FontWeight.w700),),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
           setState(() {
             ++count;
           });
           print('count : $count');
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
