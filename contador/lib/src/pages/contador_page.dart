import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget { //Widget que extiende de un widget con estado

  //createState() => _ContadorPageState(); //MOSTRAR QUE TAMBIEN SE PEUDE ASI
  @override
  createState(){
    return _ContadorPageState();
  }

}

class _ContadorPageState extends State<ContadorPage> { //este es el estado del Widget ContadorPage

  final _estiloTexto = new TextStyle(fontSize: 25); //Siempre el style del texto
  int _conteo = 0; //iniciamos el contador

  @override
  Widget build(BuildContext context) { //metodo Build
    // TODO: implement build
    return Scaffold( //Scaffold de nuestra app
      appBar: AppBar( //AppBar
        title: Text("Stateful"), //Titulo y DE AQUI PARA ABAJO CASI QUE ES LO MISMO QUE EN EL OTRO XD
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text( "Numero de toques:", style: _estiloTexto ),
            Text( '$_conteo', style: _estiloTexto )
          ],
        ),
      ),
      //Aqui ha hay cambiuos
      floatingActionButton: _crearBotones(), //AQUI se agrega una funcion donde crearemos botones
    );
  }

  Widget _crearBotones() { //Func d crear botones
    return Row(  //Los ingresaremos en un row
      mainAxisAlignment: MainAxisAlignment.end, //el tipo de Alineado
      children: <Widget>[ //El arreglo de Widget que acepta como hijo
        SizedBox(width: 30), //Agregamos un espacion ESTO DESPUES PRIMERO LOS BOTONES
        FloatingActionButton( child: Icon(Icons.exposure_zero), onPressed: _reset ), //Agregamos el boton de RESET y su evento onPressed
        Expanded( child: SizedBox(width: 5.0) ), //Agregamos un espacion ESTO DESPUES PRIMERO LOS BOTONES
        FloatingActionButton( child: Icon(Icons.remove), onPressed: _sustraer ), //Boton - y su evento onPressed
        SizedBox(width: 5.0,),  //Agregamos un espacion ESTO DESPUES PRIMERO LOS BOTONES
        FloatingActionButton( child: Icon(Icons.add), onPressed: _agregar ), // y el boton de + y su evento
      ],
    );
  }

  void _agregar() { //Funcion de Agregar de una forma a mostrar
    _conteo++;
    setState(() {

    });
  }

  void _sustraer() { //Funciones de forma comprimida
    setState(() => _conteo--);
  }

  void _reset() {
    setState(() => _conteo = 0);
  }


}