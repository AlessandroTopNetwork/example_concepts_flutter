import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
        backgroundColor: Colors.blue,//Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: [
          const Icon(Icons.access_alarm_outlined), // classic icon inert
          IconButton(icon: const Icon(// if this icon will be not mutable set it to cost this increase performance of app
            Icons.account_box_sharp, // icon image
            color: Colors.yellow,), // icon base color
              onPressed: () { print('ciao'); } // on press print in console this message
          )
        ],
        foregroundColor: Colors.lightGreenAccent, // color of title and Icon into app bar if it icon color is not set
        systemOverlayStyle: SystemUiOverlayStyle.dark, // set light or dark icon in system notification bar
        elevation: 50, // origin shadow from app bar
        shadowColor: Colors.grey, // color shadow from app bar
        toolbarHeight: 120,
        toolbarOpacity: 0.7, // opacity of objects into app bar 1 equals 0 opacity 0 equals objects invisible
        titleTextStyle: TextStyle(
          fontSize: 30, //font size
          backgroundColor: Colors.cyan, // evidence text marker like
        ),
        //centerTitle: true,
        //leading: const Icon(Icons.account_circle_sharp), // icon into app bar not clickable
        //automaticallyImplyLeading: false, // setting a false automatic implements Leading like Drawer if this arguments is false not show any even if declared
      ),
      //drawer: const Drawer(), // not show this if you show leading
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
