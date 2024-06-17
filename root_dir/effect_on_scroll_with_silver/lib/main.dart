import 'package:flutter/cupertino.dart';
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
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   title: Text(widget.title),
      //   actions: [
      //     Icon(Icons.access_alarm),
      //     IconButton(
      //         onPressed: () {
      //           print('your action on click');
      //         },
      //         icon: Icon(Icons.access_alarm_outlined))
      //   ],
      // ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height/2, // get dimension of device and get half space with height
            child: CustomScrollView(
              slivers: [
                SliverAppBar( // dinamic app bar indeed it when scroll page
                  backgroundColor: Colors.red,
                  expandedHeight: 120,
                  //floating: true, // show app bar when scrool top page
                  pinned: true, // pinned app bar
                  flexibleSpace: FlexibleSpaceBar(
                    title: Text('Test title sliver app bar'),
                  ),
                ),
                SliverToBoxAdapter( // genericv scrool object
                  child: Text('test m,e\ntest\ntest\ntest\etwt\ntest\ntest\ntest'),
                ),
                SliverList(
                    delegate:
                        SliverChildBuilderDelegate(childCount: 50, (context, index) {
                  return ListTile(
                    trailing: Icon(Icons.abc_rounded),
                    title: Text('Test me title numer : $index'),
                    subtitle: Text('test me sub title'),

                  );
                })
                ),
              ],
            ),
          ),
          Text("space between"),
          SizedBox(
            height: MediaQuery.of(context).size.height/3,
            child: CustomScrollView(
              slivers: [
                SliverGrid(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 10),
                    delegate:
                    SliverChildBuilderDelegate(childCount: 50, (context, index) {
                      return GridTile(
                        child: Container(
                          color: Colors.yellow,
                          child: Text('Container number : $index'),
                        ),

                      );
                    })
                ),
              ],
            ),
          )
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
