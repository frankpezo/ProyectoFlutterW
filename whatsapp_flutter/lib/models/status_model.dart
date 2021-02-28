//Empezamos importando el chat model
import 'package:whatsapp_flutter/models/chat_model.dart';

//1. Creamos la clase
class  StatusModel{
  //2. Declaramos atributos
  final String name;
  final String time;
   final String imgUrl;

  //3. Creamos const 
  StatusModel({ this.name, this.time, this.imgUrl});
}

//4. Creamos una lista
List<StatusModel> status=[
  //4.1. Instanciamos la clase
  new StatusModel(
    name: messageData[0].name,
    time: "Hoy, 3:00AM",
    imgUrl: messageData[0].imageUrl, 
  ), 

   new StatusModel(
    name: messageData[1].name,
    time: "Hoy, 10:00AM",
    imgUrl: messageData[1].imageUrl, 
  ), 
  
   new StatusModel(
    name: messageData[2].name,
    time: "Hoy, 11:00AM",
    imgUrl: messageData[2].imageUrl, 
  ), 
  
   new StatusModel(
    name: messageData[3].name,
    time: "Hoy, 1:00PM",
    imgUrl: messageData[3].imageUrl, 
  ), 
  
  
];