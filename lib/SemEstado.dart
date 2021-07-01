import 'package:flutter/material.dart';

import 'CadastroPage.dart';
import 'agenda.dart';
import 'home.dart';
import 'Tema.dart';

class SemEstado extends StatelessWidget{
  final String title;

  const SemEstado({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
   return AnimatedBuilder(
     animation: Tema.intance, 
     builder: (context, child)
     {
      return MaterialApp(
     //home: CadastroPage(),
     theme: ThemeData(
       brightness: Tema.intance.isThemeDark
       ? Brightness.dark
       : Brightness.dark,
     ),
     initialRoute: '/home',
     routes: {
       '/home': (context) => Home(),
       '/cad': (context) => CadastroPage(),
       '/ag': (context) => Agenda(),
     },
   );
     });
  }
    
  
}