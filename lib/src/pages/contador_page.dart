import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _ContadorPageState();
  }

}

class _ContadorPageState extends State<ContadorPage> {

  final _estiloTexto = new TextStyle(fontSize:26);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
      appBar: AppBar(
          title: Text('Stateful'),
          centerTitle: true,
          elevation:2.1
      ),
      body: Center(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              Text('Número de clicks: ',style: _estiloTexto),
              Text('$_conteo',style: _estiloTexto),
            ],
          )
      ),
      floatingActionButton: FloatingActionButton(

        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            _conteo++;
          });
        },
      ),
    );

  }

}