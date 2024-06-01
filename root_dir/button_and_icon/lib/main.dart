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
            TextButton(
                onPressed: () {
                  print('Text button test');
                },
                child: Text(
                    'Text button')), // on press null disable button text or (){print('ciao');} test TextButton not have container show in scaffold
            ElevatedButton(
                onPressed: () {
                  print('button elevated test');
                },
                child: Text(
                    'Button elevated')), // elevated button have container show in scaffold
            OutlinedButton(
                onPressed: () {
                  print('button outline test');
                },
                child: Text(
                    'Outline button')), // outline have container but limit container is black
            // button whit icon
            TextButton.icon(
                onPressed: () {
                  print('Text button test');
                },
                icon: Icon(Icons.account_circle),
                label: Text(
                    'Text button')), // on press null disable button text or (){print('ciao');} test TextButton not have container show in scaffold
            ElevatedButton.icon(
              onPressed: () {
                print('button elevated test');
              },
              icon: Icon(Icons.abc_sharp),
              label: Text('Button elevated'),
              style:
              ElevatedButton.styleFrom(
                foregroundColor: Colors.red, // color of object into button
                backgroundColor: Colors.lightGreenAccent, // background button color
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20), // padding into button , space betwen object and margin of button
              ),
              //ButtonStyle(
              // foregroundColor: MaterialStateProperty.all<Color>(Colors.lightGreen), // color objects contained into button
              // overlayColor: MaterialStateProperty.resolveWith((states) {
              //   if(states.contains(MaterialState.focused)) { // html
              //     return Colors.purple;
              //   }
              //   if(states.contains(MaterialState.hovered)) { // html
              //     return Colors.blue;
              //   }
              //   if(states.contains(MaterialState.pressed)) { // htm and smartphone
              //     return Colors.amber;
              //   }
              // }),
              //), // old style format
            ),
            OutlinedButton.icon(
                onPressed: () {
                  print('button outline test');
                },
                icon: Icon(Icons.ac_unit_outlined),
                label: Text('Outline button')
            ),
            Icon(Icons.account_balance),
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
