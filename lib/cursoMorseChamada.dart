import 'package:flutter/material.dart';
import 'package:hamhelper/CursoCodigoMorseBilly.dart';
import 'package:hamhelper/cursosDisponiveis.dart';

class CursoMorseChamada extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Curso de Código Morse',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Ofertado por PY2LCD',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          //FlatButton(
          //onPressed: () {
          //print('testePause');
          //},
          //child:
          //  _buildButtonColumn(color, Icons.pause_circle_filled, 'Pausar'),
          //),
          FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CursosDisponiveis(),
                ),
              );
            },
            child: _buildButtonColumn(color, Icons.arrow_back, 'Voltar'),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CursoCodigoMorseBilly(),
                ),
              );
            },
            child:
                _buildButtonColumn(color, Icons.play_circle_outline, 'Ouvir'),
          ),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        'Agradeço a gentileza do Billy em autorizar a publicação neste APP.'
        ' Nunca desita dos seus sonhos. É possível aprender Morse!'
        ' Estude, Estude! Pratique, pratique!'
        ' Busque sempre a excelência! Bons Estudos!',
        softWrap: true,
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('Código Morse | PY2LCD'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/morse.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
