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
      body: Column(
        children: [
          Container( // if first container not have height and width , it take all space in the current page
            padding: EdgeInsets.all(20), // space into container to margin(container) and obj inside, all direction
            // color: Colors.yellow,
            // height: 200,
            // width: 200,
            margin: EdgeInsets.all(20), // margin all around container
            decoration: BoxDecoration(
              color: Colors.yellow, // when use BoxDecopration , the color be declared into BoxDecoration
              border: Border.all(width: 10, color: Colors.indigo),
            ),
            child: Text('test container'), // container will be adapt to content into it self if not have height and width
          ),
          Container( // if first container not have height and width , it take all space in the current page
            padding: EdgeInsets.all(20), // space into container to margin(container) and obj inside, all direction
            color: Colors.blue,
            height: 300,
            width: 300,
            margin: EdgeInsets.all(20), // margin all around container
            alignment: Alignment.bottomCenter, // alignment child of container to bottom center
            transform: Matrix4.rotationZ(0.2),
            child: Text('test alignments\nand trasform'), // container will be adapt to content into it self if not have height and width , the child will be last arguments of any widgets
          ),
          // padding
          Padding( // use this widget if you want get blank space around of container, will be used for an example list build // use padding when you need only padding around children
            padding: const EdgeInsets.all(8.0),
            child:
            Container( // if first container not have height and width , it take all space in the current page
              padding: EdgeInsets.all(20), // space into container to margin(container) and obj inside, all direction
              color: Colors.blue,
              height: 300,
              width: 300,
              margin: EdgeInsets.all(20), // margin all around container
              child: Text('padding'), // container will be adapt to content into it self if not have height and width , the child will be last arguments of any widgets
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
