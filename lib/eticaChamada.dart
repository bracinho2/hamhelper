import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:hamhelper/cursosDisponiveis.dart';
import 'package:audioplayers/audio_cache.dart';

class CursoEticaChamada extends StatelessWidget {
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
                    'Curso de Ética Operacional',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Ofertado por PP1EB',
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

    //Player de audio
    AudioPlayer advancedPlayer = new AudioPlayer();
    AudioCache audioCache = new AudioCache(fixedPlayer: advancedPlayer);

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          FlatButton(
            onPressed: () {
              print('testePause');
              advancedPlayer.pause();
            },
            child:
                _buildButtonColumn(color, Icons.pause_circle_filled, 'Pausar'),
          ),
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
              advancedPlayer.stop();
              audioCache.play('audioEtica.mp3');
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
        ' Alô Elizeu! Obrigado por compartilhar conosco este curso de ética em áudio!'
        ' Nunca desita dos seus sonhos. Opere obedecendo as boas práticas da comunidade!'
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
          title: Text('Áudio > Ética'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/etica.jpg',
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
