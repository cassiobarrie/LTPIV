import 'package:app1/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CadastroPage extends StatefulWidget {
  @override
  _CadastroPage createState() => _CadastroPage();
}

class _CadastroPage extends State<CadastroPage> {
String nome = '';
String pedidos = '';


Widget _frente(){
  return SizedBox(
    
        width: double.infinity,
        height: double.infinity,
        child: Padding (
          padding: const EdgeInsets.all(10.0),
          child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          
        children:[
          Container(
             width: 20,
             height: 20,

              
             ),
          Container(
             width: 200,
             height: 200,
             child: Image.asset('assets/images/chamas.jpg')
          ),
          
          Card(
            
          child: TextField(
            onChanged: (text){
              nome = text;
            },
            decoration: InputDecoration(labelText: 'Nome', border: OutlineInputBorder()),
          ), ),
          Card(
          child: TextField(
             onChanged: (text){
              pedidos = text;
              
            },
            decoration: InputDecoration(labelText: 'Pedidos', border: OutlineInputBorder()),
          ), ),
          
          ElevatedButton(onPressed: (){
                if(nome != '' && pedidos != ''){
                  print("cadastrar $nome ");
                  Navigator.of(context).pushReplacementNamed('/home');
                }
                else{
                  print("Falta dados!");
                }
          }, 
          child: Text('Cadastrar'))
        ],
        ),
       ),
     );
}
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          SizedBox(
             width: 200,
             height: MediaQuery.of(context).size.height,
             //child: Image.asset('assets/images/bg.jpg', fit: BoxFit.cover),
          ),
          _frente(),
        ],
      )
   );


  }
}