import 'package:flutter/material.dart';

class Pantalla7 extends StatefulWidget {
  const Pantalla7({Key? key}) : super(key: key);

  @override
  State<Pantalla7> createState() => _Pantalla7State();
}

class _Pantalla7State extends State<Pantalla7> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true, // 🔥 Esta es la clave para centrar el texto
        title: const Text(
          'Pantalla 7',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ),
      body: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                child: Text(
                  '$_count',
                  style: const TextStyle(fontSize: 40),
                  key: ValueKey(_count),
                ),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return ScaleTransition(scale: animation, child: child);
                },
              ),
              ElevatedButton(
                child: const Text('Add'),
                onPressed: () {
                  setState(() {
                    _count += 1;
                  });
                },
              ),
            ],
          ),
          SizedBox(height: 10),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Regresa a Pantalla 1
              },
              child: const Text('Pantalla inicial'),
            ),
          ),
        ],
      ),
    );
  }
}
