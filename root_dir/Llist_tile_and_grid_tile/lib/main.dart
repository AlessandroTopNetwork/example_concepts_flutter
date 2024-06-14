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
  List<int> list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14];

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
          Icon(Icons.access_alarm),
          IconButton(
              onPressed: () {
                print('test');
              },
              icon: Icon(Icons.add)),
        ],
      ),
      body:
      //ListView(
      GridView.count(
        padding: EdgeInsets.all(20),
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        children: [
          for (var i in list)
            GridTile(
              // header: // header of card into grid
              //   Container(
              //     color : Colors.cyanAccent,
              //     child : Text('Lorem ipsum'),
              //   ),
              footer: Container(
                padding: EdgeInsets.all(12),
                alignment: Alignment.bottomRight,
                child: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                  ),
              child: Image.asset("assets/img/test.png")
            ),
            // list tile
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: ListTile( // semplicita rispetto alle list view
            //     tileColor: Colors.lightGreen, // color container list tile
            //     trailing: Icon(Icons.drag_handle),
            //     leading: CircleAvatar(
            //       radius: 20,
            //       backgroundImage: AssetImage("assets/img/test.png"), // to import image from asset into arguments
            //     ),
            //     title: Text('Ciao io sono io'),
            //     subtitle: Text('subtitle'),
            //   ),
            // )
          //Conatiner list view
            // Container(
            //   margin: EdgeInsets.only(bottom: 20),
            //   alignment: Alignment.center,
            //   height: 100,
            //   decoration: BoxDecoration(
            //     color: Colors.orange,
            //     borderRadius: BorderRadius.circular(12),
            //   ),
            //   child: Row(
            //     children: [
            //       Image.asset("assets/img/test.png"), // widget image
            //       Column(
            //         children: [
            //           Text('Container n°:$i'),
            //           Text('Ciao sono nuovo su questa applicazione')
            //         ],
            //       ),
            //     ],
            //   ),
            // )
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
