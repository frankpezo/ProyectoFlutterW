import 'package:flutter/material.dart';
import 'package:whatsapp_flutter/models/chat_model.dart';
import 'package:whatsapp_flutter/pages/chat_screen.dart';


//1. Creamos el Stateful
class ChatList extends StatefulWidget{
  _ChatListState createState()=> new _ChatListState();
}

class _ChatListState extends State<ChatList>{
       @override
       Widget build(BuildContext context) {
         //1.1. Retornamos un listView BUILDER
         //Nota: No olvidemos importar la clase del model
         return ListView.builder(//Nos permitirá utilizar el modelo que hemos creado en models. xd
              itemCount: messageData.length,//Recordemos que messageData fue creada en la clase del model
              itemBuilder: (context, i)=>new Column(
                //Llamamos a la propiedad children
                children: <Widget>[
                  //Para mostrar la información
                  new Divider(
                    height: 10.0,
                  ),
                  
                  new ListTile(//Colocamos la información correspondiente del chat. 
                     leading: new CircleAvatar(
                        backgroundImage: NetworkImage(messageData[i].imageUrl)
                     ),
                     
                     title: new Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: <Widget>[
                        new Text(
                          messageData[i].name,
                          style: new TextStyle(fontWeight: FontWeight.bold ),
                        ),
                        new Text(
                          messageData[i].time,
                          style: new TextStyle(color: Colors.grey, fontSize: 14.0 ),
                        ) 
                     ],
                     ) ,
                     subtitle: new Container(
                       padding: const EdgeInsets.only(top: 5.0),
                        child: new Text(
                            messageData[i].message,
                            style: new TextStyle(color: Colors.grey, fontSize: 15.0),
                        ),
                     ),
                     //Colocamos la propiedad onTap
                     onTap: (){
                       //Creamos el rooter para acceder al widget
                       var route= new MaterialPageRoute(
                         //Colocamos la clase de la página que vamos a utilizar
                         builder: (BuildContext context) => new ChatScreen(name:messageData[i].name,)
                       );
                       //Luego usamos la función Navigator
                       Navigator.of(context).push(route);
                     },
                  )
                ],
              ),
         );
       }
}