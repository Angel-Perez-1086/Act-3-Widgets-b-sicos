import 'package:flutter/material.dart';
import 'package:perezrutas/pagina_cuatro.dart';
import 'package:perezrutas/pagina_inicial.dart';
import 'package:perezrutas/pagina_dos.dart';
import 'package:perezrutas/pagina_tres.dart';
import 'package:perezrutas/pagina_cinco.dart';
import 'package:perezrutas/pagina_seis.dart';
import 'package:perezrutas/pagina_siete.dart';

void main() => runApp(const MiRutas());

class MiRutas extends StatelessWidget {
  const MiRutas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre páginas',
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaUno(),
        '/pantalla2': (context) => const PantallaDos(),
        '/pantalla3': (context) => const PantallaTres(),
        '/pantalla4': (context) => const Pantalla4(),
        '/pantalla5': (context) => const Pantalla5(),
        '/pantalla6': (context) => const Pantalla6(),
        '/pantalla7': (context) => const Pantalla7(),
      },
    );
  }
}
