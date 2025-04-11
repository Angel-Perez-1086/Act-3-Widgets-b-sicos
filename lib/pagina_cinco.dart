import 'package:flutter/material.dart';

class Pantalla5 extends StatefulWidget {
  const Pantalla5({Key? key}) : super(key: key);

  @override
  State<Pantalla5> createState() => _Pantalla5State();
}

class _Pantalla5State extends State<Pantalla5> {
  bool _first = true;
  double _fontSize = 60;
  Color _color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true, // 🔥 Esta es la clave para centrar el texto
        title: const Text(
          'Pantalla 5',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  height: 120,
                  child: AnimatedDefaultTextStyle(
                    duration: const Duration(milliseconds: 300),
                    style: TextStyle(
                      fontSize: _fontSize,
                      color: _color,
                      fontWeight: FontWeight.bold,
                    ),
                    child: const Text('Flutter'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      _fontSize = _first ? 90 : 60;
                      _color = _first ? Colors.blue : Colors.red;
                      _first = !_first;
                    });
                  },
                  child: const Text(
                    "Switch",
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Regresa a Pantalla 1
              },
              child: const Text('Regresar'),
            ),
          ),
        ],
      ),
    );
  }
}
