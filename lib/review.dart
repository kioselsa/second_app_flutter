import 'package:flutter/material.dart';
class Review extends StatelessWidget{
  String pathImage="assets/img/abatar.jpg";
  String name="Oscar Delgado";
  String details="1 review 5 photos";
  String comment="Un lugar de primera";

  Review(this.pathImage,this.name,this.details,this.comment, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    //Icono con estrellas llenas
    final star = Container (
      margin: const EdgeInsets.only(
          right: 3.0
      ),
      child: const Icon(
        Icons.star,
        color:  Color(0xFFf2C611),
      ),
    );

    //Icono con estrellas a la mitad
    final starHalf = Container (
      margin: const EdgeInsets.only(
          right: 3.0
      ),
      child: const Icon(
        Icons.star_half,
        color:  Color(0xFFf2C611),
      ),
    );

    //Icono con estrellas a la mitad
    final starBorder = Container (
      margin: const EdgeInsets.only(
          right: 3.0
      ),
      child: const Icon(
        Icons.star_border,
        color:  Color(0xFFf2C611),
      ),
    );

    //Estrellas para los comentarios de los usuarios
    final stars=Row(
      children: [
        star,
        star,
        star,
        starHalf,
        starBorder
      ],
    );


    // fila con la informacion del usuario
    final userComment=Container(
      margin: const EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 28.0,
            fontWeight: FontWeight.w900
        ),
      ),
    );

    // fila con la informacion del usuario
    final userInfo=Container(
      margin: const EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        details,
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

    //Contenido del review
    final userDetails=Column(
      //Para alinear el contenido dentro de la columna usamos
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        userName,
        userInfo,
        userComment
      ],
    );

    //Imagen del review
    final photo=Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),
      width: 220.0,
      height: 200.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage),
        ),
      ),
    );

    final imagen=Row(
      children: [
        photo,
        userDetails
      ],
    );

   return imagen;
  }

}