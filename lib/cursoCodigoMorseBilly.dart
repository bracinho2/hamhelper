import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(CursoCodigoMorseBilly());

AudioPlayer advancedPlayer = new AudioPlayer();
AudioCache audioCache = new AudioCache(fixedPlayer: advancedPlayer);

class CursoCodigoMorseBilly extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material de Estudo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Aulas > Código Morse')),
        body: SafeArea(
          child: BodyLayout(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            advancedPlayer.stop();
          },
          child: Icon(Icons.stop),
          backgroundColor: Colors.green,
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

Widget _myListView(BuildContext context) {
  final titles = [
    'PY2LCD - Lição 01',
    'PY2LCD - Lição 02',
    'PY2LCD - Lição 03',
    'PY2LCD - Lição 04',
    'PY2LCD - Lição 05',
    'PY2LCD - Lição 06',
    'PY2LCD - Lição 07',
    'PY2LCD - Lição 08',
    'PY2LCD - Lição 09',
  ];

  final aulas = [
    'py2lcd_aula01.mp3',
    'py2lcd_aula02.mp3',
    'py2lcd_aula03.mp3',
    'py2lcd_aula04.mp3',
    'py2lcd_aula05.mp3',
    'py2lcd_aula06.mp3',
    'py2lcd_aula07.mp3',
    'py2lcd_aula08.mp3',
    'py2lcd_aula09.mp3',
  ];

  //player.play(aulas[index]);

  return ListView.builder(
    itemCount: titles.length,
    itemBuilder: (context, index) {
      return Card(
        child: FlatButton(
          onPressed: () {
            print(aulas[index]);

            advancedPlayer.stop();
            audioCache.play(aulas[index]);
          },
          child: ListTile(
            leading: Icon(Icons.music_note),
            title: Text(titles[index]),
          ),
        ),
      );
    },
  );
}
