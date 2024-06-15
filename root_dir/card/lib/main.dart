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
          Icon(Icons.abc),
          IconButton(onPressed: (){print("Ciao");}, icon: Icon(Icons.access_alarm))
        ],
      ),
      body: SizedBox(
        height: 430,
        child: Card(
          color: Colors.orangeAccent, // color box card
          shadowColor: Colors.red, // color shadow of card
          elevation: 50, // elevation of card into page
          margin: EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22) // border bottom of card in this case image cover top border of card
          ),
          clipBehavior: Clip.hardEdge, // forza il contenuto della card nei sui limiti
          child:
            Column(
                children: [
                  Image.asset("assets/img/beach-1852945_1280.jpg", fit: BoxFit.cover,),
                  Text("Hello wolrd"),
                  ListTile(
                    title: Text("Test name"),
                    subtitle: Text("Test sub title"),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/img/field-533541_1280.jpg"),
                    ),
                    trailing: Icon(Icons.favorite),
                  )
                ]
            ),
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
