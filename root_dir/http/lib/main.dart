import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'model/ablum.dart';

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
      home: const MyHomePage(title: 'Flutter Demo https response'),
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

  late Future<List<Album>> responseAlbum; // var late significa che verra popolata in un secondo momento

  void _incrementCounter() {
    test(['ciao', 'test']);
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() { // init state del widget
    super.initState();
    responseAlbum = fetchAllAlbums();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: FutureBuilder(
        future: responseAlbum,
        builder: (context, snapshot){ // snapshot is response int list responseAlbum
          if(snapshot.hasData){
            return ListView.builder(itemCount: snapshot.data!.length,
                itemBuilder: (context, index){
                  return Padding(padding: EdgeInsets.all(20),
                  child: Text('[$index] ${snapshot.data![index].title}'),);
                });
          } else if(snapshot.hasError){
            return Text('Error');
          }
          return CircularProgressIndicator();
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

void test(List<String> arguments) async {
  // This example uses the Google Books API to search for books about http.
  // https://developers.google.com/books/docs/overview
  print('ciao');
  var url =
  Uri.https('www.googleapis.com', '/books/v1/volumes', {'q': '{http}'});

  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);
  if (response.statusCode == 200) {
    print(response);
    var jsonResponse =
    convert.jsonDecode(response.body) as Map<String, dynamic>;
    var itemCount = jsonResponse['totalItems'];
    print('Number of books about http: $itemCount.');
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}

Future<List<Album>> fetchAllAlbums() async { // from gemini
  print('call fetchAllAlbums');

  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));

  if (response.statusCode == 200) {
    print('response okey');

    try {
      final List<dynamic> body = convert.jsonDecode(response.body); // Assumiamo che la risposta sia un array JSON
      return body.map((dynamic item) => Album.fromJson(item as Map<String, dynamic>)).toList();
    } catch (e) {
      print('Errore durante la decodifica JSON: $e');
      return []; // Restituisci una lista vuota in caso di errore
    }
  } else {
    print('error ? : ' + response.statusCode.toString());
    return [];
  }
}
//example other call api 


Future<bool> deleteAlbum(id) async {
  await http.delete(Uri.parse('https://jsonplaceholder.typicode.com/albums/$id')).then((value) {
    return true; // if success return true
  });
  return false;
}

Future<bool> insertAlbum(album) async {
  await http.post(Uri.parse('https://jsonplaceholder.typicode.com/albums'),
      headers: { // playload autentuication for example
        "token":"test-token",
        "api":"api"
      }, //
      body: album // send obj to insert
      ).then((value) {
    return true; // if success return true
  });
  return false;
}

