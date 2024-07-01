
import 'package:flutter/material.dart';
import 'package:hero_animation/screens/PaginaErrore.dart';
import 'package:hero_animation/screens/PrimaPagina.dart';
import 'package:hero_animation/screens/SecondaPagina.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings setting){
    final args = setting.arguments;

    switch(setting.name){
      case '/primaPagina':
        return MaterialPageRoute(builder: (context) => PrimaPagina());
      case '/secondaPagina':
        if(args is String){
          return MaterialPageRoute(builder: (context) => SecondaPagina(data : args));
        }
        return MaterialPageRoute(builder: (context) => PaginaErrore());
      default:
        return MaterialPageRoute(builder: (context) => PaginaErrore());

    }

  }
}