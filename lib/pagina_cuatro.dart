import 'package:flutter/material.dart';

class Pantalla4 extends StatefulWidget {
  const Pantalla4({Key? key}) : super(key: key);

  @override
  State<Pantalla4> createState() => _Pantalla4State();
}

class _Pantalla4State extends State<Pantalla4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          centerTitle: true, // 🔥 Esta es la clave para centrar el texto
          title: const Text(
            'Pantalla 4',
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
            Container(
              height: 120.0,
              width: double.infinity,
              color: Colors.blueGrey,
              child: const Align(
                alignment: Alignment.bottomLeft,
                child: FlutterLogo(
                  size: 60,
                ),
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
        ));
  }
}
