import 'package:flutter/material.dart';
import 'package:split_by_widget/widget/WidegtCardImg.dart';
import 'package:split_by_widget/widget/WidgetCardVideo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<int> intList = [1, 2, 3, 4, 5, 5, 8, 6, 7, 8, 9];

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
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('App bar'),
        ),
        body: ListView.builder(
            itemCount: intList.length,
            padding: EdgeInsets.all(8),
            itemBuilder: (context, index) {
              //return WidgetGeneric(numero: index, intList: intList[index]);
              if (intList[index] % 2 == 0) {
                return CardVideo(numero: index, intList: intList[index]);
              } else {
                return CardImg(numero: index, intList: intList[index]);
              }
            }),
      ),
    );
  }
}

class WidgetGeneric extends StatelessWidget {
  WidgetGeneric(
      {super.key, required this.numero, required this.intList}); // numero inglobe into var numer beloved
  final int numero;
  final int intList;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 100,
      color: intList % 2 == 0 ? Colors.orange[300] : Colors.orange[700],
      margin: EdgeInsets.only(bottom: 10),
      child:
          Text('Container indexList : $numero\nand value from list : $intList'),
    );
  }
}
