import 'package:flutter/material.dart';
import 'package:whatsapp_flutter/pages/whatsapp_chat.dart';
import 'package:whatsapp_flutter/pages/whatsapp_camera.dart';
import 'package:whatsapp_flutter/pages/whatsapp_states.dart';
import 'package:whatsapp_flutter/pages/whatsapp_call.dart';

//1. Creamos la clase
class WhatsAppHome extends StatefulWidget{
  _WhatsAppHomeState createState()=> new _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> with SingleTickerProviderStateMixin{
  //3. Creamos el controller como TabController
  TabController controller;
  //3.1. Necesitamos crear una función aquí para insertar el controller
  @override
  void initState(){
      super.initState();
      //Usamos el controller, e inicializamos el TabController
      //Nota: No olvidemos agregar en esta clase el "with SingleTickerProviderStateMixin"
      controller= new TabController(length: 4, initialIndex: 1 ,vsync:this);
  }

    @override
    Widget build(BuildContext context) {
      return new Scaffold(
      appBar: new AppBar(
        title: new Text("Whatsapp"),
     //2. . Creamos el TabBar
      bottom: new TabBar(
         //2.1. Creamos Widgets
         tabs: <Widget>[
           //2.2. Agregamos todos lo tabs
           //Cámara
           new Tab(
             icon: new Icon(Icons.camera_alt),
           ),
          
          //b. Chats
          new Tab(
             text: "CHATS",
          ), 
          
          //C. Status
          new Tab(
            text: "STATUS",
          ), 
          
          //d. Calls
          new Tab(
            text: "CALLS",
          )
         ],

          //3.3. Aquí necesitamos poner el controller que crearemos arriba
          // Es necesario para que nos funcione el tabBar
           controller: controller,
      ) ,
      ), 
      
      //4. En el cuerpo colocamos los pages
      body: new TabBarView(
        //Colocamos Widgets
       children: <Widget>[
         //4.2. Colocamos cada widget, solo no olivemos importar
           new Camera(),
           new ChatList(), 
           new StatusScreen(),
           new Call()
       ],
       //4.3. Colocamos aquí el controller
       controller: controller,
      ),
    
      );
    }
}