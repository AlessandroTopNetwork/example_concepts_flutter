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
  List<int> list = [
    1, 2, 3, 4, 5, 6, 7, 8, 9,
    1, 2, 3, 4, 5, 6, 7, 8, 9,
    1, 2, 3, 4, 5, 6, 7, 8, 9
  ];

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
          //Padding(
          //padding: const EdgeInsets.all(8.0),
          //child:
          GridView.builder(// you can use GridViewBuilder on case you do not know size of grid to build athor ways you can use gridview.count
              padding: EdgeInsets.all(8), // same result of row 78 , wrapper GridView into Widget Padding
              // itemCount: 22,
              itemCount: list.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 1, // divides the container in height
                //mainAxisExtent: 300 // non ho capito cosa fa cmq ingrandisce a piacere gli obj della grid virew
              ),
              itemBuilder: (context, index) {
                // contex is main class on run this code
                return Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.circular(11),
                  ),
                  child: Text('Container number : $index'),
                );
              }),
      // GridView.count(
      //   crossAxisCount: 3,
      //   crossAxisSpacing: 8, //assies y
      //   mainAxisSpacing: 8, // assies x
      //   children: [
      //     for (var i in list)
      //       Container(
      //           alignment: Alignment.center,
      //           decoration: BoxDecoration(
      //             color: Colors.lightGreen,
      //             borderRadius: BorderRadius.circular(11),
      //           ),
      //           child: Text('Container number : $i'),
      //         ),
      //   ],
      // ),
    );
  }
}
