import 'package:flutter/material.dart';
import 'package:whatsapp_flutter/pages/whatsapp_home.dart';

//1. Creamos el main
void main(){
    runApp(new MaterialApp(
       home: MyApp(),
    ));
}

//2. Creamos la clase como StalesWidget
class MyApp extends StatelessWidget{
     @override
     Widget build(BuildContext context) {
       return new MaterialApp(
         title: "Whatsapp",
         //Agregamos el tema y colores
         theme: new ThemeData(
           primaryColor: new Color(0xff075E54),
           accentColor:  new Color(0xff25D366)//Para que se nos aparezca abajito
         ),
         debugShowCheckedModeBanner: false,
         home: new WhatsAppHome(),//Este es el método que crearemos en otro page
       );
     }
}