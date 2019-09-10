import 'package:flutter/material.dart';

import 'package:contador/src/pages/home_page.dart';
import 'package:contador/src/pages/contador_page.dart';



class MyApp extends StatelessWidget {
  @override
  Widget build( context ) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //Para quitar la pestaña de Debug
      home: Center(
        //child: HomePage(),  //Mostrar primero el HomePage que es widget sin estado
        child: ContadorPage(), //luego motrar el ContadorPage() que ya es con estado
      ),
    );
  }
}