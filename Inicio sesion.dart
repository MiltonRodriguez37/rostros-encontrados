import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi App",
      home: Home(),
    );
  }
}


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: cuerpo()
      
    );
  }
}

Widget cuerpo(){
  return Container (
    decoration: BoxDecoration(
      image: DecorationImage(image: NetworkImage("https://thumbs.dreamstime.com/b/portrait-innocence-innocent-kid-slum-islamabad-pakistan-67584463.jpg"), //iMAGEN DE FONDO
      fit: BoxFit.cover
      
      ) 
    ),
    
  
    child: Center(
      child: Container (
        width: 250,
          height: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
        child: Column (
          mainAxisAlignment: MainAxisAlignment.center, //Teniendo la columna, se debe centrar dentro de la columna
          children: <Widget>[
            nombre(),
            SizedBox(height: 20,),
            campoUsuario(),
            campoContrasena(),
            SizedBox(height: 20,),
            botonEntrar()
          ],
        ),
      ),
    ),
  );

}

/* 
Widget cuerpo(){
  return Container (
    decoration: BoxDecoration(
      image: DecorationImage(image: NetworkImage("https://thumbs.dreamstime.com/b/portrait-innocence-innocent-kid-slum-islamabad-pakistan-67584463.jpg"), //iMAGEN DE FONDO
      fit: BoxFit.cover
      
      ) 
    ),
    
  
    child: Center(
      child: Container (
        width: 200,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10),
          ),
        child: Column (
        mainAxisAlignment: MainAxisAlignment.center, //Teniendo la columna, se debe centrar dentro de la columna
        children: <Widget>[
          nombre(),
          SizedBox(height: 30,),
          campoUsuario(),
          campoContrasena(),
          SizedBox(height: 30,),
          botonEntrar()
        ],
      ),
    ),
  );

}
*/


Widget nombre(){
  return Text("INICIO DE SESIÓN", style: TextStyle(color: Colors.black, fontSize: 22.0),);
}

Widget campoUsuario(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
    child: TextField(
      decoration: InputDecoration(
        hintText: "User",
        fillColor: Color.fromARGB(255, 236, 236, 236),
        filled: true
      ),
    ),
  );
}

Widget campoContrasena(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Password",
        fillColor: Color.fromARGB(255, 236, 236, 236),
        filled: true
      ),
    ),
  );
}


Widget botonEntrar(){

  return SizedBox(
    width: 170,
    height: 50,
    child: TextButton(
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 253, 229, 8),
        //padding: EdgeInsets.symmetric(horizontal:100, vertical: 3),
        padding: EdgeInsets.all(20), //content padding inside button
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      ),
      onPressed: (){}, 
      child: Text("Ingresar", style: TextStyle(fontSize: 17, color: Colors.black),)
      
    ),
  );
}
//ctrl + espacio, ver opciones
