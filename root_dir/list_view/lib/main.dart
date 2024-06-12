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
  List<int> list = [1,2,3,4,5,6,7,8,9];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SizedBox(
        height: 100,
        child: ListView(
          padding: EdgeInsets.all(20),
          reverse: true,
          scrollDirection: Axis.horizontal,
          children: [
            for(var i in list)
              Container(
                alignment: Alignment.center,
                width: 100,
                height: double.infinity,
                margin: EdgeInsets.only(right: 20),
                child: Text('Container number : $i'),
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(20),
                ),
              )
          ],
        ),
      ),
      // SingleChildScrollView( // case SingleChildScrollView
      //   child: Padding(
      //     padding: EdgeInsets.all(8.0),
      //     child: Column(
      //       children: <Widget>[
      //         for(var i in list)
      //             Container(
      //               height: 100,
      //               width: double.infinity,
      //               color: Colors.orange,
      //               alignment: Alignment.center,
      //               margin: EdgeInsets.only(bottom: 8),
      //               child: Text('Container number : $i'), // value of i get it with $i
      //             ),
      //         // Container(
      //         //   height: 200,
      //         //   width: double.infinity,
      //         //   color: Colors.orange,
      //         //   alignment: Alignment.bottomCenter,
      //         //   margin: EdgeInsets.only(bottom: 8),
      //         //   child: Text('1'),
      //         // ),
      //         // Container(
      //         //   height: 200,
      //         //   width: double.infinity,
      //         //   color: Colors.orange,
      //         //   alignment: Alignment.centerLeft,
      //         //   margin: EdgeInsets.only(bottom: 8),
      //         //   child: Text('1'),
      //         // )
      //       ],
      //     ),
      //   ),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
