//Para todas las paginas

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  //Para crear tu variable (widget) personalizado
  final estiloTexto = new TextStyle(fontSize: 20);
  final typo = new TextStyle(fontFamily: 'Times New Romance');
  //Mi logica de negocio
  final int contador = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Titulo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.bubble_chart),
            Text('Número de clicks:', style: estiloTexto),
            Text('$contador', style: estiloTexto),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          // Con staless widget no se puede hacer esto.
          // contador = contador++;
        },
      ),
    );
  }
}
