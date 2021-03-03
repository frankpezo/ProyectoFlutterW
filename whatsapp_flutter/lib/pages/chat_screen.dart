import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget{
  final String name;
  //Usamos constructor
  ChatScreen({this.name});

  _ChatScreenState createState()=> new _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen>{
  final TextEditingController _textController = new TextEditingController();
    final List<ChatMessage> _messages= <ChatMessage>[];
    
   void _handledSubmit(String text){
    
      //Recibimos el mensaje
      ChatMessage message= new ChatMessage(
        text: text,
        animationController: new AnimationController(
          duration: new Duration(milliseconds: 700),
        // vsync: this,
          ),
          name: widget.name,
      );

      setState(() {
              _messages.insert(0, message);
            });

            message.animationController.forward();

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
               new Flexible(child: new ListView.builder(
                      itemBuilder: (_, int index)=>_messages[index],
                      itemCount: _messages.length,
               ),),
               new Divider(height: 1.0),
                 new Container(
                   child: _builTextComposer(),//Creamos la función
                 )
             ],
           ),
        ),
       );
    }
}

//NOs permitirà manejar los mensajes
class ChatMessage extends StatelessWidget{

  ChatMessage({this.text, this.animationController, this.name});
  final String  text;
  final AnimationController animationController;
  final String name;

  @override
  Widget build(BuildContext context) {
    return new SizeTransition(//Para mostrar la transicción en nuestros mensajes. 
       sizeFactor:new CurvedAnimation(
         parent: animationController,
         curve: Curves.easeOut
       ),
       child: new Container(
          //Cómo se mostrará la información
          child: new Row(
            children: <Widget>[
              new Container(
                child: new CircleAvatar(
                  child: new Text(name[0]),
                ),
              ),
              new Expanded( 
                child: new Column(
                  children: <Widget>[
                    new Text(name),
                    new Container(
                      child: new Text(text),
                    ),
                  ],
                ),
              ),
            ],
          ),
       ),
    );
  }
}