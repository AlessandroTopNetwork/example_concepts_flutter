import 'package:flutter/material.dart';

class PrimaPagina extends StatelessWidget {
  const PrimaPagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello fisrt page'),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/secondaPagina', arguments: 'test me from RouteGenerator');
              //Navigator.push(context, MaterialPageRoute<void>(builder: (context) => SecondaPagina(data : "test data from fisrt page"))); // to open second screen
            }, child: Text('To second page'))
          ],
        ),
      );
  }
}
