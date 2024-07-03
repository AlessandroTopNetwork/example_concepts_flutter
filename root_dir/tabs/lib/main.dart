import 'package:flutter/material.dart';
import 'package:tabs/screens/PrimaPagina.dart';
import 'package:tabs/screens/SecondaPagina.dart';

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
      home: DefaultTabController(
          length: 8,
          child: Scaffold(
            appBar: AppBar(
              // title: Text('Tab test'),
              backgroundColor: Colors.blue,
              centerTitle: true,
              flexibleSpace: // remove title of appbar
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TabBar(
                      indicatorColor: Colors.red, // indication tab color
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorWeight: 8,
                      isScrollable: true,
                      // indicator: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(22),
                      //     color: Colors.red,
                      //     image: DecorationImage(
                      //       image: AssetImage(
                      //           "assets/img/sean-oulashin-KMn4VEeEPR8-unsplash.jpg"),
                      //       fit:  BoxFit.cover
                      //     ),
                      //
                      // ),
                      tabs: [
                        Tab(child: Text("ciaoCiaoCiaociao"),icon: Icon(Icons.abc_sharp, color: Colors.white,) ),
                        Tab(child: Text("ciaoCiaoCiaociao"),icon: Icon(Icons.directions_bike, color: Colors.white)),
                        Tab(child: Text("ciaoCiaoCiaociao"),icon: Icon(Icons.ac_unit_rounded, color: Colors.black)),
                        Tab(child: Text("ciaoCiaoCiaociao"),icon: Icon(Icons.ac_unit_rounded, color: Colors.deepPurpleAccent)),
                        Tab(child: Text("ciaoCiaoCiaociao"),icon: Icon(Icons.ac_unit_rounded, color: Colors.white70)),
                        Tab(child: Text("ciaoCiaoCiaociao"),icon: Icon(Icons.ac_unit_rounded, color: Colors.yellow)),
                        Tab(child: Text("ciaoCiaoCiaociao"),icon: Icon(Icons.ac_unit_rounded, color: Colors.greenAccent)),
                        Tab(child: Text("ciaoCiaoCiaociao"),icon: Icon(Icons.ac_unit_rounded, color: Colors.cyanAccent)),
                      ]),
                ],),
              bottom: null,
              // TabBar(
              //     indicatorColor: Colors.red, // indication tab color
              //     indicatorSize: TabBarIndicatorSize.tab,
              //     indicatorWeight: 8,
              //     isScrollable: true,
              //     // indicator: BoxDecoration(
              //     //     borderRadius: BorderRadius.circular(22),
              //     //     color: Colors.red,
              //     //     image: DecorationImage(
              //     //       image: AssetImage(
              //     //           "assets/img/sean-oulashin-KMn4VEeEPR8-unsplash.jpg"),
              //     //       fit:  BoxFit.cover
              //     //     ),
              //     //
              //     // ),
              //     tabs: [
              //       Tab(child: Text("ciaoCiaoCiaociao"),icon: Icon(Icons.abc_sharp, color: Colors.white,) ),
              //       Tab(child: Text("ciaoCiaoCiaociao"),icon: Icon(Icons.directions_bike, color: Colors.white)),
              //       Tab(child: Text("ciaoCiaoCiaociao"),icon: Icon(Icons.ac_unit_rounded, color: Colors.black)),
              //       Tab(child: Text("ciaoCiaoCiaociao"),icon: Icon(Icons.ac_unit_rounded, color: Colors.deepPurpleAccent)),
              //       Tab(child: Text("ciaoCiaoCiaociao"),icon: Icon(Icons.ac_unit_rounded, color: Colors.white70)),
              //       Tab(child: Text("ciaoCiaoCiaociao"),icon: Icon(Icons.ac_unit_rounded, color: Colors.yellow)),
              //       Tab(child: Text("ciaoCiaoCiaociao"),icon: Icon(Icons.ac_unit_rounded, color: Colors.greenAccent)),
              //       Tab(child: Text("ciaoCiaoCiaociao"),icon: Icon(Icons.ac_unit_rounded, color: Colors.cyanAccent)),
              //     ]),
            ),
            body: const TabBarView(children: [
              PrimaPagina(),
              SecondaPagina(data: "test me"),
              //Icon(Icons.abc_sharp),
              //Icon(Icons.directions_bike),
              Icon(Icons.ac_unit_rounded, color: Colors.deepPurpleAccent),
              Icon(Icons.access_alarms),
              Icon(Icons.ac_unit_rounded, color: Colors.deepPurpleAccent),
              Icon(Icons.ac_unit_rounded),
              Icon(Icons.ac_unit_rounded, color: Colors.deepPurpleAccent),
              Icon(Icons.access_time_rounded),
            ]),
          )),
    );
  }
}
