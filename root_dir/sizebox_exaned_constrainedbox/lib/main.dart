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
        actions: [
          Icon(Icons.account_box),
          IconButton(
            icon: Icon(Icons.access_time_filled_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: 100,
                maxHeight: 200, // max height
              ),
            child: Container(
              color: Colors.cyanAccent,
              height: 500, // not set this height because it is upper of constrain
            ),
          ),
          Container(
              height: 200,
              color: Colors.lightGreen
          ),
          SizedBox(
            height: 200,
            width: double.infinity,
          ),
          Expanded(
              child: Text('TEst')
          ), // get all space not used in the page
          Container(
              height: 200,
              color: Colors.red
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
