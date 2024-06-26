import 'package:flutter/material.dart';
import 'package:navigation_of_page/RouteGenerator.dart';
import 'package:navigation_of_page/screens/PaginaErrore.dart';
import 'package:navigation_of_page/screens/PrimaPagina.dart';
import 'package:navigation_of_page/screens/SecondaPagina.dart';

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
      home: PrimaPagina(),
      onGenerateRoute: RouteGenerator.generateRoute,
      // routes: { // static routinmg with data not passed dynamical
      //   '/primaPagina':(contex) => PrimaPagina(),
      //   '/secondaPagina':(contex) => SecondaPagina(data:'test from home call page'),
      // },
    );
  }
}