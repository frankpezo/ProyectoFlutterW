import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget{
  final String name;
  //Usamos constructor
  ChatScreen({this.name});

  _ChatScreenState createState()=> new _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen>{
    @override
    Widget build(BuildContext context) {
      return new Container(
        child: new Text(widget.name),
      ) ;
    }
}