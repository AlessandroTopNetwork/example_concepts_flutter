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
      body: Stack(children: [
        Container(
          child: Column(
            children: [
              Hero(
                tag:
                    "imaggine copertina", // questo tag deve avere lo stesso nome dell'imagine tag di partenza
                child: Image.asset(
                    "assets/img/sean-oulashin-KMn4VEeEPR8-unsplash.jpg"),
              ),
              Text(data),
            ],
          ),
        ),
        Positioned(
            right: 200,
            top: 200,
            child: Hero(
              tag: "icon image",
              child: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
            ))
      ]),
    );
  }
}
