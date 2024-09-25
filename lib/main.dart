import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FitBody',
      theme: ThemeData(
      
        
        useMaterial3: true,
      
      ),
      
      home: const MyHomePage(title: 'Create Account'),  
      
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
  
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            widget.title, 
            style: TextStyle(
              color: Colors.yellow
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[   
            const Text(
              "Let's Start!",
              style:TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,  
              ),
            ),
            Container(
              color: Color(0xFFB3A0FF),
              child: Column(
                children: [   
              Padding(
              padding: EdgeInsets.only(left: 32.0, right: 32.0, top: 32.0)),
               TextField(
                decoration: InputDecoration(
                  labelText: "Nome Completo",
                  hintText: "Ex: Cauã Alves Martins",
                  border: OutlineInputBorder(),
                ),
              ),
               Padding(
              padding: EdgeInsets.only(left: 32.0, right: 32.0, top: 16.0)),
               TextField(
                decoration: InputDecoration(
                  labelText: "E-mail",
                  hintText: "Ex: caua@ucdb.br",
                  border: OutlineInputBorder(),
                ),
              ),
               Padding(
              padding: EdgeInsets.only(left: 32.0, right: 32.0, top: 16.0)),
               TextField(
                decoration: InputDecoration(
                  labelText: "Senha",
                  hintText: "*********",
                  border: OutlineInputBorder(),
                ),
              ),
               Padding(
              padding: EdgeInsets.only(left: 32.0, right: 32.0, top: 16.0)),
               TextField(
                decoration: InputDecoration(
                  labelText: "Confirme sua senha",
                  hintText: "*********",
                  border: OutlineInputBorder(),
                ),
              ),
            ],
             )
            ),
            RichText(
              text: TextSpan(
                text: 'By continuing, you agree to Terms of Use and Privacy Policy'
              )
            )
          ],
        ),
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}
