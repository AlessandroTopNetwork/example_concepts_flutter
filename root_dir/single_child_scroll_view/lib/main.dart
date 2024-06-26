import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
    return Stack(
        children: [
          Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              title: Text(widget.title),
              actions: [
                Icon(Icons.access_alarm),
                IconButton(
                    onPressed: () {
                      print('test me');
                    },
                    icon: Icon(Icons.add)),
              ],
            ),
            body: Scrollbar( // add scrolbar
              //scrollbarOrientation: ScrollbarOrientation.bottom,
              thumbVisibility: true, // always show scroll bar
              trackVisibility: true, // show tracks of scroll bar
              thickness: 10, // size of thickness
              radius: Radius.circular(20),
              child: SingleChildScrollView(
                //scrollDirection: Axis.horizontal,
                reverse: true,
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text('Sure, I can help you write text in English. What kind of text would you like me to write? I can write different kinds of creative text formats,  like poems, code, scripts, musical pieces, email, letters, etc. I will try my best to fulfill all your requirements.'),
                    Text('Sure, I can help you write text in English. What kind of text would you like me to write? I can write different kinds of creative text formats,  like poems, code, scripts, musical pieces, email, letters, etc. I will try my best to fulfill all your requirements.'),
                    Text('Sure, I can help you write text in English. What kind of text would you like me to write? I can write different kinds of creative text formats,  like poems, code, scripts, musical pieces, email, letters, etc. I will try my best to fulfill all your requirements.'),
                    Text('Sure, I can help you write text in English. What kind of text would you like me to write? I can write different kinds of creative text formats,  like poems, code, scripts, musical pieces, email, letters, etc. I will try my best to fulfill all your requirements.'),
                    Text('Sure, I can help you write text in English. What kind of text would you like me to write? I can write different kinds of creative text formats,  like poems, code, scripts, musical pieces, email, letters, etc. I will try my best to fulfill all your requirements.'),
                    Text('Sure, I can help you write text in English. What kind of text would you like me to write? I can write different kinds of creative text formats,  like poems, code, scripts, musical pieces, email, letters, etc. I will try my best to fulfill all your requirements.'),
                    Text('Sure, I can help you write text in English. What kind of text would you like me to write? I can write different kinds of creative text formats,  like poems, code, scripts, musical pieces, email, letters, etc. I will try my best to fulfill all your requirements.'),
                    Text('Sure, I can help you write text in English. What kind of text would you like me to write? I can write different kinds of creative text formats,  like poems, code, scripts, musical pieces, email, letters, etc. I will try my best to fulfill all your requirements.'),
                    Text('Sure, I can help you write text in English. What kind of text would you like me to write? I can write different kinds of creative text formats,  like poems, code, scripts, musical pieces, email, letters, etc. I will try my best to fulfill all your requirements.'),
                    Text('Sure, I can help you write text in English. What kind of text would you like me to write? I can write different kinds of creative text formats,  like poems, code, scripts, musical pieces, email, letters, etc. I will try my best to fulfill all your requirements.'),
                    Text('Sure, I can help you write text in English. What kind of text would you like me to write? I can write different kinds of creative text formats,  like poems, code, scripts, musical pieces, email, letters, etc. I will try my best to fulfill all your requirements.'),
                    Text('Sure, I can help you write text in English. What kind of text would you like me to write? I can write different kinds of creative text formats,  like poems, code, scripts, musical pieces, email, letters, etc. I will try my best to fulfill all your requirements.'),
                    Text('Sure, I can help you write text in English. What kind of text would you like me to write? I can write different kinds of creative text formats,  like poems, code, scripts, musical pieces, email, letters, etc. I will try my best to fulfill all your requirements.'),
                    Text('Sure, I can help you write text in English. What kind of text would you like me to write? I can write different kinds of creative text formats,  like poems, code, scripts, musical pieces, email, letters, etc. I will try my best to fulfill all your requirements.'),
                  ],
                ),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: _incrementCounter,
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ), // This trailing comma makes auto-formatting nicer for build methods.
          ),
          Positioned( // positioned absolute
              bottom: 50,
              left: 150,
              height: 150,
              width: 150,
              child: Container(
                color: Colors.cyan,
                child: IconButton(icon : Icon(Icons.account_circle_sharp), onPressed: () { print('test me'); },),
          ))
        ]);
  }
}
