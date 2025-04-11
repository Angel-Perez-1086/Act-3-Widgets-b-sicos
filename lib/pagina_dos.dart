import 'package:flutter/material.dart';

class PantallaDos extends StatelessWidget {
  const PantallaDos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          centerTitle: true, // 🔥 Esta es la clave para centrar el texto
          title: const Text(
            'Pantalla Dos',
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
              color: Colors.orangeAccent,
              alignment: Alignment.center,
              width: double.infinity,
              height: 300,
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Container(
                  color: Colors.blueGrey,
                ),
              ),
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
} //rtyrty
