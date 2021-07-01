import 'package:app1/Tema.dart';
import 'package:flutter/material.dart';

class Agenda extends StatefulWidget{
  @override
  State<Agenda> createState() {
    return Estado();
  }

}

class Estado extends State<Agenda>{
  int cont = 0;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text("AD Chamas do Avivamento"),
      ),
      body: 
   Container(
         width: double.infinity,
         height: double.infinity,
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [Text("No dia 10/07/2021 - Reunião de Obreiros!"),
            Container(
                width: 25,
                height: 25,
              ),
                    Text("No dia 01/08/2021 - Começa a oração do mês!"),
                    Text("Dando inicio na congregação do Jardim Paulista."),
 
              
          ],),
          
         ),
     
    );



      

  }
  
}

class MeuSwitcher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
          value: Tema.intance.isThemeDark,
          onChanged: (value){
           Tema.intance.changeTheme();
          },
        );
      
    
  }
}
