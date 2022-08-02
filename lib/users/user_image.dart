import 'package:flutter/material.dart';
class UserImage extends StatelessWidget{
  String name="";
  String experience="";
  String pathImage="";
  String pathImageEmail="";
  UserImage(this.name,this.experience,this.pathImage,this.pathImageEmail,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    // fila con la informacion del usuario
    final userInfo=Container(
      margin: const EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        experience,
        textAlign: TextAlign.left,
        style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 28.0,
            color: Color(0xFFa3a5a7)
        ),
      ),

    );

    //fila con el nombre del usuario
    final userName=Container(
      margin: const EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 28.0
        ),
      ),
    );

    final imgEmail=Container(
      margin: const EdgeInsets.only(
          top: 20.0,
          right: 20.0
      ),
      width: 100.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImageEmail),
        ),
      ),
    );

    //Información del usuario
    final userDetails=Column(
      //Para alinear el contenido dentro de la columna usamos
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        userName,
        userInfo
      ],
    );

    //Imagen del usuario
    final photo=Container(
      margin: const EdgeInsets.only(
          top: 20.0,
          left: 20.0
      ),
      width: 180.0,
      height: 150.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage),
        ),
      ),
    );

    final userRow=Row(
      children: [

        photo,
        userDetails,
        const Spacer(),
        imgEmail
      ],
    );

    return userRow;
  }

}