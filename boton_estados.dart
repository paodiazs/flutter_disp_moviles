import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BotonesCentrados(),
    );
  }
}

class BotonesCentrados extends StatefulWidget {
  @override
  _BotonesCentradosState createState() => _BotonesCentradosState();
}

class _BotonesCentradosState extends State<BotonesCentrados> {
  bool boton1Habilitado = true;
  bool boton2Habilitado = true;
  String textoMostrado = '';

  void mostrarTexto(String texto) {
    setState(() {
      textoMostrado = texto;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Botones Estados'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: boton1Habilitado
                  ? () {
                      mostrarTexto('Botón 1');
                      setState(() {
                        boton1Habilitado = false;
                        boton2Habilitado = true;
                      });
                    }
                  : null, // Deshabilitar el botón si no está habilitado
              child: Text('Botón 1'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: boton2Habilitado
                  ? () {
                      mostrarTexto('Botón 2');
                      setState(() {
                        boton1Habilitado = true;
                        boton2Habilitado = false;
                      });
                    }
                  : null, // Deshabilitar el botón si no está habilitado
              child: Text('Botón 2'),
            ),
            SizedBox(height: 16),
            Text(
              textoMostrado,
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
