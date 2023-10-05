```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp( // Agrega MaterialApp como el widget raíz
      title: "Hola Mundo",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mi Aplicación"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Toque para ver el mensaje",
              style: TextStyle(fontSize: 20),
            ),
            GestureDetector(
              onTap: () {
                mostrarMensaje(context);
              },
              child: Text(
                "Clic aquí",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.green,
                  
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void mostrarMensaje(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Mensaje"),
          content: Text("Hola"),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Cerrar"),
            ),
          ],
        );
      },
    );
  }
}
```