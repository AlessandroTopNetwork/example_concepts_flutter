import 'package:flutter/material.dart';
import 'package:navigation_of_page/screens/SecondaPagina.dart';

class PaginaErrore extends StatelessWidget {
  const PaginaErrore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Error'),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Error'),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/primaPagina');
              //Navigator.push(context, MaterialPageRoute<void>(builder: (context) => SecondaPagina(data : "test data from fisrt page"))); // to open second screen
            }, child: Text('To fist page'))
          ],
        ),
      ),
    );
  }
}
