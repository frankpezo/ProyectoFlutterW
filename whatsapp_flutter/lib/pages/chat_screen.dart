import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget{
  final String name;
  //Usamos constructor
  ChatScreen({this.name});

  _ChatScreenState createState()=> new _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen>{
  final TextEditingController _textController = new TextEditingController();
   
   void _handledSubmit(String text){
      print(text);
   }

  // Declaramos aquí la función
  Widget  _builTextComposer(){
    //Color para los iconos
      return new IconTheme(
        data: new IconThemeData(color: Theme.of(context).primaryColor),
          child:  new Container(
           //Creamos el input
           child: new Row(
             children: <Widget>[
                new Flexible(
                  //Colocamos el input
                child:new TextField(
                   controller: _textController,
                )
                ), 
                new Container(
                  child: new IconButton(
                     icon: new Icon(Icons.send),
                     onPressed: ()=>_handledSubmit(_textController.text),
                  ),
                )
             ],
           ),
       ));
  }
    @override
    Widget build(BuildContext context) {
       return new Scaffold(
          appBar:   new AppBar(
        title: new Text(widget.name),//EL nombre de la persona al que le mandaremos el mensaje
          ), 
        body: new Container(
           //Realizamos las modificaciones
           child: new Column(
             children: <Widget>[
                 new Container(
                   child: _builTextComposer(),//Creamos la función
                 )
             ],
           ),
        ),
       );
    }
}