import 'package:flutter/cupertino.dart';
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
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body:
      Column(
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              //image: DecorationImage(image: AssetImage("assets/img/white-sand-beach-2252020_1280.jpg"), fit: BoxFit.fill),
              shape: BoxShape.circle,
              color: Colors.red,
              backgroundBlendMode: BlendMode.difference,
              gradient: LinearGradient(
                colors: [
                  Colors.orange,
                  Colors.green,
                ],
              ),
            ),
            child: Container(
              height: 200,
              width: double.infinity,
              alignment: Alignment.center,
              child: Text('Container DecoratedBox'),

            ),
          ),
          // ClipOval(
          // child: Container(
          //     height: 200,
          //     width: double.infinity,
          //     color: Colors.grey,
          //     alignment: Alignment.center,
          //     child: Text('Container Clip oval'),
          //
          //   ),
          // ),
          ClipRRect(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.elliptical(20, 44)),
            child: Container(
              height: 200,
              width: double.infinity,
              color: Colors.grey,
              alignment: Alignment.center,
              child: Text('Container Clip oval'),

            ),
          ),
          // Opacity(// set opacity of widget child
          //   opacity: 0.4,
          //   child: Container(
          //     height: 200,
          //     width: double.infinity,
          //     color: Colors.red,
          //     alignment: Alignment.center,
          //     child: Text('Conatiner opacity'),
          //   ),
          // ),
          // Transform.rotate(// set rotate of widget child
          //   angle: 45,
          //   child: Container(
          //       height: 200,
          //       width: double.infinity,
          //       color: Colors.red,
          //       alignment: Alignment.center,
          //       child: Text('Container transfomer'),
          //
          //   ),
          // ),
          Transform.scale(// set scale of widget child
            //scale: 2, // scale all directrion
            scaleX: 1,
            scaleY: 1,
            origin: Offset(100, 500), // set origin of widget child
            child: Container(
              height: 200,
              width: double.infinity,
              color: Colors.green,
              alignment: Alignment.center,
              child: Text('Container scale'),

            ),
          ),
          Transform.translate(// set scale of widget child
            offset: Offset(50, 50),
            child: Container(
              height: 200,
              width: double.infinity,
              color: Colors.yellow,
              alignment: Alignment.center,
              child: Text('Container translate'),

            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
