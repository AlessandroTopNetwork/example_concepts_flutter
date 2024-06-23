import 'package:flutter/material.dart';

class CardImg extends StatefulWidget {//state ful widget
  CardImg(
      {super.key, required this.numero, required this.intList}); // numero inglobe into var numer beloved
  int numero;
  int intList;

  @override
  State<CardImg> createState() => _CardImgState();
}

class _CardImgState extends State<CardImg> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 100,
      color: Colors.orange[700],
      margin: EdgeInsets.only(bottom: 10),
      child: Stack(
        children: [
          Center( // Centra il testo
            child: Text(
              'Container indexList : ${widget.numero}\nand [dispari] value from list : ${widget.intList}',
              textAlign: TextAlign.center, // Allinea il testo al centro
            ),
          ),
          Positioned(
            right: 10,
            top: 0,
            bottom: 0,
            child: IconButton(
              onPressed: () {
                setState(() {
                  ++widget.intList;
                });
              },
              icon: Icon(Icons.add),tooltip: 'Increment',
            ),
          ),
        ],
      ),
    );
  }
}
