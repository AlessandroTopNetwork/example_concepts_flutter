import 'package:flutter/material.dart';

class CardVideo extends StatelessWidget {// sate less widget
  CardVideo(
      {super.key,
        required this.numero,
        required this.intList}); // numero inglobe into var numer beloved
  final int numero;
  final int intList;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 100,
      color: Colors.orange[300],
      margin: EdgeInsets.only(bottom: 10),
      child:
      Text('Container indexList : $numero\nand value from list : $intList'),
    );
  }
}