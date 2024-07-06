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

  bool isChecked = false;
  String _genere = 'femmina';
  String _cio = 'cio';
  double _slider = 40;
  bool _isSwitch = false;

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
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                // obscureText: true, // like password
                // obscuringCharacter: 'C', // set your char maskerad your password
                // readOnly: true, // no set it
                // enabled: false, // not clicckable
                maxLength: 10, // lenght of input 10 char
                cursorColor: Colors.redAccent, // color of curos input text
                style: TextStyle(fontWeight: FontWeight.w800),
                decoration: InputDecoration(
                  hintText: 'Write test here', // placeholder into text form
                  border:
                      OutlineInputBorder(), // border all around text filed form
                ),
              ),
            ),
            Checkbox(
              checkColor: Colors.deepOrangeAccent, // color of true check spunt
              fillColor: MaterialStatePropertyAll<Color>(
                  Colors.green), // base color check box
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value!; // null check !
                });
              },
            ),
            Radio(
                // The radios go at least in pairs, they make caòpo to a single past genre based on the variable of the ratio itself
                value: 'femmina',
                groupValue: _genere, // group of ratio
                onChanged: (value) {
                  setState(() {
                    _genere = value!; // null check
                  });
                }),
            Radio(
                value: 'maschio',
                groupValue: _genere,
                onChanged: (value) {
                  setState(() {
                    _genere = value!; // null check
                  });
                }),
            Radio(
                value: 'bot',
                groupValue: _cio, // exclude ratio , another ratio group
                onChanged: (value) {
                  setState(() {
                    _cio = value!; // null check
                  });
                }),
            Slider(
                max: 100,
                min: 5,
                //divisions: 5,// divide max value for this input , in this case 5 section
                value: _slider,
                onChanged: (value) {
                  setState(() {
                    _slider = value;
                    print(value);
                  });
                }),
            Switch(
              activeColor: Colors.red,
                value: _isSwitch,
                onChanged: (value) {
                  setState(() {
                    _isSwitch = value;
                  });
                })
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
