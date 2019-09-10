import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget{

  final estiloTexto = new TextStyle(fontSize: 25); //Para usar estilos en todos lados y no repetir mucho codigo
  final int conteo = 10; //un final de 10 que no podemos cambiar porque es un widget sin estado

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold( //Widget principal de toda la app
      appBar: AppBar( //Barra de arriba
        title: Text("Titulo"), //Texto del titulo de la app
        centerTitle: true, //para poner el titulo en el centro del Appbar
        elevation: 0.0,  //Controla la elevacion del AppBar
      ),
      body: Center( //En el body colocaremos un widget center
        child: Column( //como hijo colocaremos un Column para apilar widgets
          mainAxisAlignment: MainAxisAlignment.center, //Centramo los widget del column en el centro
          children: <Widget>[ //Agregamos hijos a Column que es un Arreglo de Widgets
            Text( "Numero de clicks:", style: estiloTexto ), //Agregamos dos textos
            Text( '$conteo', style: estiloTexto )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton( //Agregamos un boton flotante en nuestro Scaffold
        child: Icon( Icons.add ), //A dicho boton le agregamos un icono +
        onPressed: () { //Si no se agrega esto no tiene efecto de presionardo
          print("Hola Mundo"); //El evento on pressed que imprima Hola Mundo
        },
      ),
    );
  }
}