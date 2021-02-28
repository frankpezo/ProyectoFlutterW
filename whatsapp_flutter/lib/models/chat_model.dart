//1. Creamos una clase
class ChatModel{
  //2. Agregamos los atributos
   final String name;
   String message;
   final String time;
   final String imageUrl;

  //2.1. Creamos constructor
  ChatModel({this.name, this.message, this.time, this.imageUrl});

  //2.2. Insertamos getters and setters


}

//3. Creamos una lista en donde iremos almacenados la inforación 
List<ChatModel>messageData=[
     //3.1. Creamos los datos
     new ChatModel(
       name: "Frank Pezo", 
       message: "WTF!!!!!!", 
       time: "15.30", 
       imageUrl: "https://i.pinimg.com/564x/8f/07/e5/8f07e5f59a3770055f3a86efb1756b1e.jpg"   
     ),
     new ChatModel(
       name: "Estefani", 
       message: "Apúra oe!!!", 
       time: "14.30", 
       imageUrl: "https://i.pinimg.com/236x/5f/68/54/5f6854b37746e36a7f2c6dda9596e41a.jpg"   
     ),
     new ChatModel(
       name: "Severus", 
       message: "¿Hola cómo estás?", 
       time: "13.30", 
       imageUrl: "https://i.pinimg.com/236x/57/9c/f7/579cf73095b6cbca7d55ea1b317a61c0.jpg"   
     ),
      new ChatModel(
       name: "Bryano", 
       message: "No, no lo hice. xd", 
       time: "12.30", 
       imageUrl: "https://i.pinimg.com/236x/4c/d5/79/4cd579608aa918e776a430a5fbc4b61d.jpg"   
     ),
      new ChatModel(
       name: "Anderson", 
       message: "hahaha xd", 
       time: "11.30", 
       imageUrl: "https://i.pinimg.com/564x/bc/1f/54/bc1f542d05f0ab59dcb6c07a18c6c705.jpg"   
     ),
      new ChatModel(
       name: "Sara", 
       message: "¿Qué le dijiste?", 
       time: "10.30", 
       imageUrl: "https://i.pinimg.com/236x/57/c9/d2/57c9d215f299d7e75c03e13f3b0a572b.jpg"   
     ),
      new ChatModel(
       name: "Ledith", 
       message: "Ya ya, mañana", 
       time: "09.30", 
       imageUrl: "https://i.pinimg.com/236x/7b/15/9e/7b159ed2588083519330644c611e297a.jpg"   
     )
];
