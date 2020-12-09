import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle(fontSize: 26);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
        appBar:
            AppBar(title: Text('Stateful'), centerTitle: true, elevation: 2.1),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Número de clicks: ', style: _estiloTexto),
            Text('$_conteo', style: _estiloTexto),
          ],
        )),
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(width: 30),
        FloatingActionButton(
            onPressed: _limpiarState, child: Icon(Icons.exposure_zero)),
        Expanded(child: SizedBox()),
        FloatingActionButton(
            onPressed: _decrementar, child: Icon(Icons.remove)),
        SizedBox(width: 5.0),
        FloatingActionButton(onPressed: _agregar, child: Icon(Icons.add))
      ],
    );
  }

  void _agregar() {
    setState(() => _conteo++);
  }

  void _decrementar() {
    if (_conteo > 0) setState(() => _conteo--);
  }

  void _limpiarState() {
    setState(() => _conteo = 0);
  }
}
