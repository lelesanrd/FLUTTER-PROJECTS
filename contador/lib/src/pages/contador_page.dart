import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  _ContadorPageState createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  //Para crear tu variable (widget) personalizado
  final _estiloTexto = new TextStyle(fontSize: 20);
  final _typo = new TextStyle(fontFamily: 'Times New Romance');
  //Mi logica de negocio
  int _contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Stateful'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.bubble_chart),
              Text('Número de clicks:', style: _estiloTexto),
              Text('$_contador', style: _estiloTexto),
            ],
          ),
        ),
        //Para mover los botones, usar:
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton(
            child: Icon(Icons.exposure_zero), onPressed: _reset),
        //para agregar espaciado entre los botones:
        // SizedBox(width: 5.0),
        //Para tirar el boton al otro lado:
        Expanded(child: SizedBox()),
        FloatingActionButton(
            child: Icon(Icons.exposure_neg_1), onPressed: _sustraer),
        SizedBox(width: 5.0),
        FloatingActionButton(
            child: Icon(Icons.exposure_plus_1), onPressed: _agregar),
      ],
    );
  }

  void _agregar() {
    //Esto solo existe dentro de los stateful... recuerda que es para redibujar, es una forma de actulizar nuestras variables... o widgets
    setState(() => _contador++);
  }

  void _sustraer() {
    setState(() => _contador--);
  }

  void _reset() {
    setState(() => _contador = 0);
  }
}
