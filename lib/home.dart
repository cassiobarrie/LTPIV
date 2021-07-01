import 'package:app1/Tema.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  @override
  State<Home> createState() {
    return Estado();
  }

}

class Estado extends State<Home>{
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
         children: [Text("Versiculo do Dia!"),
         Container(
                width: 25,
                height: 25,
              ),
                    Text("    Porque Deus tanto amou o mundo que deu o seu Filho Unigênito, para que todo o que nele crer não pereça, mas tenha a vida eterna. João 3:16"),
         Container(
               width: 25,
               height: 85,
              ),

              

          ElevatedButton( onPressed: (){
            Navigator.of(context).pushNamed('/ag');
            }, 
            child: Text('Agenda'),),

          ElevatedButton( onPressed: (){
            Navigator.of(context).pushNamed('/cad');
            }, 
            child: Text('Pedidos de Oração'),),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:[
              Container(
                width: 160,
                height: 5,
                color: Colors.blue,
               
                
              ),
          ])
          
         ],
         ),
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
