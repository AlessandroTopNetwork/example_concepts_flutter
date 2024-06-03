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
      body: Container(
        height: 500,
        width: 300,
        color: Colors.lightGreen, // color display into app if container have obj into
        child:
        // Row(
        //   textDirection: TextDirection.rtl, // text direction origin
        //   children: [
        //     Icon(Icons.access_alarm_outlined),
        //     Icon(Icons.access_time_filled_outlined),
        //     Icon(Icons.ac_unit),
        //   ],
        // )
        Column(
          //mainAxisSize: MainAxisSize.min, // cover all space needed , or max get all space possible
          //mainAxisAlignment: MainAxisAlignment.center, // main on column is y on row is x
          crossAxisAlignment: CrossAxisAlignment.stretch, // cross on column is x on row is y
          textDirection: TextDirection.rtl, // text direction origin
          verticalDirection: VerticalDirection.up, // bootom to top 
          children: [
            Icon(Icons.access_alarm_outlined),
            Icon(Icons.access_time_filled_outlined),
            Icon(Icons.ac_unit),

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
