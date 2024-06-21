import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<bool> isFavoriteList = List.generate(9, (index) => false);// Lista per tenere traccia dello stato di ogni icona

  List<int> list = [1,2,3,4,5,6,7,8,9];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test me'),
          backgroundColor: Colors.blue,
        ),
        body: ListView(children: [
          Column(children: [
            for (var i = 0; i < list.length; i++)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: 250,
                child: Card(
                  clipBehavior: Clip.hardEdge, // clip child into card
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Stack(children: [
                    Image.asset(
                      'assets/img/nour-elhakim-CsiFAKKBwUc-unsplash.jpg',
                      fit: BoxFit.fitHeight,
                    ),
                    Positioned(
                      child: InkWell(// listerner double tap on icon favorite
                          onDoubleTap: () {
                            setState(() {
                              isFavoriteList[i] = !isFavoriteList[i];
                            });
                            print('Test me double tap');
                            print('vale bool : ${isFavoriteList[i]}');
                          },
                          child: isFavoriteList[i]
                              ? Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                )
                              : Icon(Icons.favorite_border)),
                      right: 10,
                      top: 200,
                    ),
                  ]),
                ),
              ),
            ),
          ]),
        ]),
      ),
    );
  }
}
