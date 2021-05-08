import 'package:app1/Tema.dart';
import 'package:flutter/material.dart';

class ComEstado extends StatefulWidget{
  @override
  State<ComEstado> createState() {
    return Estado();
  }

}

class Estado extends State<ComEstado>{
  int cont = 0;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 02"),
        actions: [
          MeuSwitcher(),
        ],
      ),

      body: 
      Container(
        width: double.infinity,
        height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [Text("Contador: $cont"),
        
         MeuSwitcher(),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children:[
             Container(
               width: 25,
               height: 25,
               color: Colors.red,
             ),
             Container(
               width: 25,
               height: 25,
               color: Colors.blue,
             ),
             Container(
               width: 25,
               height: 25,
               color: Colors.green,
             ),
         ])
        ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
            cont++;
          });
        },
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
