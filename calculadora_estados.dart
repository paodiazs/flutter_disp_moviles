import 'package:flutter/material.dart';
import 'dart:math';

class Calculadora extends StatefulWidget {
  @override
  _CalculadoraState createState() => _CalculadoraState();
}
class _CalculadoraState extends State<Calculadora> {
  String _operacion = "";
  double _primerNumero = 0;
  double _segundoNumero = 0;
  double _resultado = 0;
  double _sumar() {
    return _primerNumero + _segundoNumero;
  }
  double _restar() {
   return _primerNumero - _segundoNumero;
}
double _multiplicar() {
  return _primerNumero * _segundoNumero;
}
double _dividir() {
  return _primerNumero / _segundoNumero;
}
void _onSumar() {
  _resultado = _sumar();
  _operacion = "+";
  setState(() {});
}
void _onRestar() {
  _resultado = _restar();
  _operacion = "-";
  setState(() {});
}
void _onMultiplicar() {
  _resultado = _multiplicar();
  _operacion = "*";
  setState(() {});
}
void _onDividir() {
  _resultado = _dividir();
  _operacion = "/";
  setState(() {});
}
void _elevarAlCuadrado() {
  _resultado = _primerNumero * _primerNumero;
  _operacion = "^2";
  setState(() {});
}
void _calcularRaizCuadrada() {
  _resultado = sqrt(_primerNumero);
  _operacion = "√";
  setState(() {});
}
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Calculadora')
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Operación: $_operacion',
            style: TextStyle(fontSize: 20),
),
          TextField(
            decoration: InputDecoration(

     labelText: 'Primer número',
  ),
  onChanged: (value) {
    _primerNumero = double.parse(value);
}, ),
TextField(
  decoration: InputDecoration(
    labelText: 'Segundo número',
  ),
  onChanged: (value) {
    _segundoNumero = double.parse(value);
}, ),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    FloatingActionButton(
      onPressed: _onSumar,
      tooltip: 'Sumar',
      child: Icon(Icons.add),
),
    SizedBox(width: 10),
    FloatingActionButton(
      onPressed: _onRestar,
      tooltip: 'Restar',
      child: Icon(Icons.remove),
), ],
),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    FloatingActionButton(
      onPressed: _onMultiplicar,
      tooltip: 'Multiplicar',
      child: Icon(Icons.close),
),
    SizedBox(width: 10),
    FloatingActionButton(
      onPressed: _onDividir,
      tooltip: 'Dividir',
      child: Icon(Icons.percent),
), ],

),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    FloatingActionButton(
      onPressed: _elevarAlCuadrado,
      tooltip: 'Elevar al Cuadrado',
      child: Text('^2'), // Puedes personalizar el texto o el icono aquí
    ),
    SizedBox(width: 10),
    FloatingActionButton(
      onPressed: _calcularRaizCuadrada,
      tooltip: 'Raíz Cuadrada',
      child: Text('√'), // Puedes personalizar el texto o el icono aquí
    ),
    SizedBox(width: 10),
    FloatingActionButton(
      onPressed: _onSumar,
      tooltip: 'Sumar',
      child: Icon(Icons.add),
    ),
    SizedBox(width: 10),
    // Agrega otros botones de operación aquí
  ],
),




            Text(
              'Resultado: $_resultado',
              style: TextStyle(fontSize: 20),
) ],
), ),
); }
}
void main() {
  runApp(
    MaterialApp(
      home: Calculadora(),
) );
}