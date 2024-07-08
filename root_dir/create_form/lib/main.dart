import 'package:flutter/material.dart';

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();

  String _name = '';
  String _surname = '';
  int _age = 0;

  Map data = {'name': '', 'surname': '', 'age': 0};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.all(22),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(

                // onChanged: (text) {
                //   setState(() {
                //     _name = text;
                //   });
                // },
                validator: (value){
                  if(value == null || value.isEmpty){
                    return 'insert your name';
                  }
                },
                onSaved: (value){
                  data['name'] = value;
                },
                decoration: InputDecoration(label: Text('Name')),
                textInputAction: TextInputAction.next, // go to next textField
              ),
              TextFormField(
                validator: (value){
                  if(value == null || value.isEmpty){
                    return 'insert your surname';
                  }
                },
                // onChanged: (text) {
                //   setState(() {
                //     _surname = text;
                //   });
                // },
                onSaved: (value){
                  data['surname'] = value;
                },
                decoration: InputDecoration(label: Text('Surname')),
                textInputAction: TextInputAction.next,
              ),
              TextFormField(
                validator: (value){
                  if(value == null || value.isEmpty){
                    return 'insert your age';
                  }
                },
                // onChanged: (age) {
                //   _age = int.parse(age);
                // },
                onSaved: (value){
                  data['age'] = value;
                },
                decoration: InputDecoration(label: Text('age')),
                keyboardType: TextInputType.number,
              ),
              ElevatedButton(
                  onPressed: () {
                    if(_formKey.currentState!.validate()){
                      //print(' + $_name + $_surname  $_age');
                      _formKey.currentState!.save();
                      print('$data');
                    }
                  },
                  child: Text('Send me')),
            ],
          ),
        ),
      ),
    );
  }
}
