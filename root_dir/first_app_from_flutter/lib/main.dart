import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // immutable variable

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), // color default base of app
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title; // immutable variable

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
    return Scaffold( // container master of page context app
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title), // set title args into app bar widget.title get filed of widget in this context and get value
      ),
      body: Center( // center all into child: arguments
        child: Column( // column widget will be contain list of widget
          mainAxisAlignment: MainAxisAlignment.center, // alignment axis x
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:', // Constant variables weigh less in the code so better to use if we know that variable must be fixed
            ),
            Text(
              '$_counter', // not constant because is variable incremental by floatingButton
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton( // insert floating button
        onPressed: _incrementCounter, // call method on click button
        tooltip: 'Increment', // on long press on this button will be display this String
        child: const Icon(Icons.add), // add as child Icon image into floatingButton
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
