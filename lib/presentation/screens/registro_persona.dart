import 'package:flutter/material.dart';


class Registrar extends StatelessWidget {
  const Registrar({super.key});

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
        width: 275,
          height: 500,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
        child: Column (
          mainAxisAlignment: MainAxisAlignment.center, //Teniendo la columna, se debe centrar dentro de la columna
          children: <Widget>[
            nombre(),
            SizedBox(height: 20,),
            campoNombre(),
            campoApellidos(),
            campoFechaNac(),
            campoFechaLugar(),
            campoCaracteristicas(),
            campoDatosAdicionales(),
            SizedBox(height: 20,),
            botonAdjuntarImagen()
          ],
        ),
      ),
    ),
  );

}

Widget nombre(){
  return Text("DATOS DEL DESAPARECIDO/A",  textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 22.0),);
}

Widget campoNombre(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 3),
    child: TextField(
      decoration: InputDecoration(
        hintText: "Nombre",
        fillColor: Color.fromARGB(255, 236, 236, 236),
        filled: true
      ),
    ),
  );
}

Widget campoApellidos(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 3),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
         //contentPadding: EdgeInsets.symmetric(vertical: 15),
        hintText: "Apellidos",
        fillColor: Color.fromARGB(255, 236, 236, 236),
        filled: true
      ),
      //style: TextStyle(fontSize: 20),
    ),
  );
}

Widget campoFechaNac(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 3),
    child: TextField(
      decoration: InputDecoration(
        hintText: "Fecha de nacimiento",
        fillColor: Color.fromARGB(255, 236, 236, 236),
        filled: true
      ),
    ),
  );
}

Widget campoFechaLugar(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 3),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Fecha y lugar último avistamiento",
        fillColor: Color.fromARGB(255, 236, 236, 236),
        filled: true
      ),
    ),
  );
}

Widget campoCaracteristicas(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 3),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Características particulares",
        fillColor: Color.fromARGB(255, 236, 236, 236),
        filled: true
      ),
    ),
  );
}

Widget campoDatosAdicionales(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 3),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Datos adicionales",
        fillColor: Color.fromARGB(255, 236, 236, 236),
        filled: true
      ),
    ),
  );
}


Widget botonAdjuntarImagen(){

  return SizedBox(
    width: 170,
    height: 60,
    child: TextButton(
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 253, 229, 8),
        //padding: EdgeInsets.symmetric(horizontal:100, vertical: 3),
        padding: EdgeInsets.all(20), //content padding inside button
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      ),
      onPressed: (){}, 
      child: Text("Adjuntar imagen", style: TextStyle(fontSize: 17, color: Colors.black),)
      
    ),
  );
}