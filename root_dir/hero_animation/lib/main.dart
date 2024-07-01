import 'package:flutter/material.dart';
import 'package:hero_animation/RouteGenerator.dart';

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
      onGenerateRoute: RouteGenerator.generateRoute,
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

  bool isFavorite = false;

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
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
            height: 350,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/secondaPagina",
                    arguments: "test me");
              },
              child: Stack(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    clipBehavior: Clip.hardEdge, // clip img into card
                    child: Column(children: [
                      Hero(
                        tag:
                            "imaggine copertina", // same tag between two page/img
                        child: Image.asset(
                            "assets/img/sean-oulashin-KMn4VEeEPR8-unsplash.jpg"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "Corso flutter",
                          style: TextStyle(fontSize: 22),
                        ),
                      )
                    ]),
                  ),
                  Positioned(
                      right: 20,
                      top: 20,
                      child: Hero(
                        tag: "icon image",
                        child: IconButton(
                          onPressed: (){
                            setState(() {
                              isFavorite = !isFavorite;
                            });
                          },
                          icon : Icon(Icons.favorite),
                          color: isFavorite ? Colors.red : null,
                        ),
                      ))
                ],
              ),
            ),
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
