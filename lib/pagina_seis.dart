import 'package:flutter/material.dart';

class Pantalla6 extends StatefulWidget {
  const Pantalla6({Key? key}) : super(key: key);

  @override
  State<Pantalla6> createState() => _Pantalla6State();
}

class _Pantalla6State extends State<Pantalla6> {
  double padValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true, // 🔥 Esta es la clave para centrar el texto
        title: const Text(
          'Pantalla 6',
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
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent,
                ),
                child: const Text('Change padding'),
                onPressed: () {
                  setState(() {
                    padValue = padValue == 0.0 ? 100.0 : 0.0;
                  });
                },
              ),
              Text('Padding = $padValue'),
              AnimatedPadding(
                padding: EdgeInsets.all(padValue),
                duration: const Duration(seconds: 2),
                curve: Curves.easeInOut,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 4,
                  color: Colors.orangeAccent,
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
                  child: const Text('Pantalla inicial'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
