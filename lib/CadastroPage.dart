import 'package:app1/ComEstado.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CadastroPage extends StatefulWidget {
  @override
  _CadastroPage createState() => _CadastroPage();
}

class _CadastroPage extends State<CadastroPage> {
String nome = '';
String cpf = '';
String email = '';
String senha = '';

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
             child: Image.asset('assets/images/orden.jpg')
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
              email = text;
            },
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(labelText: 'E-mail', border: OutlineInputBorder()),
          ), ),
          Card(
          child: TextField(
             onChanged: (text){
              cpf = text;
            },
             keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'CPF', border: OutlineInputBorder()),
          ), ),
         Card(
         child: TextField(
            onChanged: (text){
              senha = text;
            },
            obscureText: true,
            decoration: InputDecoration(labelText: 'Senha', border: OutlineInputBorder()),
          ), ),
          ElevatedButton(onPressed: (){
                if(nome != '' && email != '' && cpf != '' &&  senha != ''){
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
             child: Image.asset('assets/images/orden.jpg', fit: BoxFit.cover),
          ),
          _frente(),
        ],
      )
   );


  }
}