import 'package:flutter/material.dart';
import 'package:widget_material_desing/screens/PrimaPagina.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _counter = 0;

  String title = 'test app';

  final _messagerKey = GlobalKey<ScaffoldMessengerState>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: _messagerKey,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: PrimaPagina(),
      // Scaffold(
      //   appBar: AppBar(
      //     backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //     title: Text(title),
      //   ),
      //   body: Column(
      //     children: [
      //       Center(
      //         child: Chip(
      //           label: Text('text Chip'),
      //           avatar: CircleAvatar(
      //             backgroundColor: Colors.cyanAccent,
      //             child: Text('AE'),
      //           ),
      //         ),
      //       ),
      //       CircularProgressIndicator()
      //     ],
      //   ),
      //   floatingActionButton: FloatingActionButton(
      //     onPressed: () {
      //       setState(() {
      //         final snackBar = SnackBar(
      //           content: Text('test snack bar now'),
      //           action: SnackBarAction(
      //               label: 'Undo',
      //               onPressed: () {
      //                 print('Cancel');
      //               }),
      //         );
      //         _messagerKey.currentState?.showSnackBar(snackBar);
      //       });
      //     },
      //     tooltip: 'Test me',
      //     child: const Icon(Icons.add),
      //   ), // This trailing comma makes auto-formatting nicer for build methods.
      // ),
    );
  }
}
