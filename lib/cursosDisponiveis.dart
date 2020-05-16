import 'package:flutter/material.dart';
import 'package:hamhelper/cursoMorseChamada.dart';
import 'package:hamhelper/eticaChamada.dart';

void main() => runApp(CursosDisponiveis());

class CursosDisponiveis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListViews',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Materiais QRV =)')),
        body: SafeArea(
          child: BodyLayout(),
        ),
      ),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

// replace this function with the code in the examples
Widget _myListView(BuildContext context) {
  return ListView(
    children: <Widget>[
      FlatButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CursoMorseChamada()),
          );
        },
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('images/morse.jpg'),
          ),
          title: Text('Curso de Código Morse'),
          subtitle: Text('Curso ofertado por PY2LCD'),
        ),
      ),
      FlatButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CursoEticaChamada()),
          );
        },
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('images/etica.jpg'),
          ),
          title: Text('Curso de Ética Operacional'),
          subtitle: Text('Curso ofertado por PP1EB'),
        ),
      ),
    ],
  );
}
