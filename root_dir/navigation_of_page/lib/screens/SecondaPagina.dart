import 'package:flutter/material.dart';

import 'PrimaPagina.dart';

class SecondaPagina extends StatelessWidget {
  const SecondaPagina({super.key, required this.data});

  final String data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test me , second page'),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello second page'),
            Text('Data from frist page : $data'),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/primaPagina');
              //Navigator.pop(context); // return popy one card , return to fisrt page
            }, child: Text('To fisrt page'))
          ],
        ),
      ),
    );
  }
}
