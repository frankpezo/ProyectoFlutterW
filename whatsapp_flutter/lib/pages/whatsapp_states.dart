import 'package:flutter/material.dart';
import 'package:whatsapp_flutter/models/status_model.dart'; //No olvidemos importar


//1. Creamos el StafulWidget
class StatusScreen extends StatefulWidget{
  _StatusScreenState createState()=> new _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen>{
   @override
   Widget build(BuildContext context) {
     return Scaffold(
        body: new ListView(
          children: <Widget>[
            new ListTile(
              leading: new CircleAvatar(//Para poner la imagen de perfil
                 foregroundColor: Theme.of(context).accentColor,
                 backgroundColor: Colors.grey,
                 backgroundImage: new NetworkImage(status[0].imgUrl),
              ),
              title: new Text(
                status[0].name,
                style: new TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: new Text("Añadir a mi estado"),
            ),
            new Text(
              "Recientes",
              style: new TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor),
            ),
              new ListTile(
              leading: new CircleAvatar(//Para poner la imagen de perfil
                 foregroundColor: Theme.of(context).accentColor,
                 backgroundColor: Colors.grey,
                 backgroundImage: new NetworkImage(status[1].imgUrl),
              ),
              title: new Text(
                status[1].name,
                style: new TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: new Text("Añadir a mi estado"),
            ),
            new Divider(),
              new ListTile(
              leading: new CircleAvatar(//Para poner la imagen de perfil
                 foregroundColor: Theme.of(context).accentColor,
                 backgroundColor: Colors.grey,
                 backgroundImage: new NetworkImage(status[2].imgUrl),
              ),
              title: new Text(
                status[2].name,
                style: new TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: new Text("Añadir a mi estado"),
            ),
          ],
        ),
     );
   }
}
