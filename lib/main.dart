import 'package:flutter/material.dart';
import 'package:hamhelper/cursosDisponiveis.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainPage(),
  ));
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Center(
          child: FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CursosDisponiveis()),
              );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 70.0,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('images/hamhelper.png'),
                ),
                Text(
                  'HamHelper',
                  style: TextStyle(
                    color: Colors.orange,
                    fontFamily: 'Chewy',
                    fontSize: 40.0,
                  ),
                ),
                Text(
                  "Good Music for 'New' HAMs",
                  style: TextStyle(
                    color: Colors.orange,
                    fontFamily: 'Chewy',
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.teal.shade200,
                  ),
                ),
                Text(
                  'by PY5TH',
                  style: TextStyle(
                    color: Colors.orange,
                    fontFamily: 'Chewy',
                    fontSize: 10.0,
                  ),
                ),
                Text(
                  'Versão 1.0 | 2020',
                  style: TextStyle(
                    color: Colors.orange,
                    fontFamily: 'Chewy',
                    fontSize: 10.0,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
