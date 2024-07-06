import 'package:flutter/material.dart';

class PrimaPagina extends StatelessWidget {
  const PrimaPagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test me , fisrt page'),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello fisrt page'),
            ElevatedButton(onPressed: (){
              showDialog(context: context, builder: (context){
                return SimpleDialog(
                  title: Text('Alter dialog'),
                  children: [
                    SimpleDialogOption(
                      onPressed :(){},
                      child: Text('Prima Opzione'),
                    ),
                    SimpleDialogOption(
                      onPressed :(){},
                      child: Text('Seconda Opzione'),
                    ),
                    SimpleDialogOption(
                      onPressed :(){},
                      child: Text('TErza Opzione'),
                    )
                  ],
                );
              });
            }, child: Text('test simple dialog')),
            ElevatedButton(onPressed: (){
              showDialog(context: context, builder: (context){
                return SimpleDialog(
                  title: Text('Alter dialog'),
                  children: [
                    AlertDialog(
                      title: Text('Prima option'),
                      content: Text('Test prima option'),
                      actions: [
                        TextButton(onPressed: (){}, child: Text('no')),
                        TextButton(onPressed: (){}, child: Text('si')),
                      ],
                    )
                  ],
                );
              });
            }, child: Text('Test Alert dialog'))
          ],
        ),
      ),
    );
  }
}
