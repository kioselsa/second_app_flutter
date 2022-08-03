import 'package:flutter/material.dart';
import 'button_purple.dart';

class DescriptionPlace extends StatelessWidget{

  String namePlace;
  int starts;
  String descriptionPlace;

  DescriptionPlace(this.namePlace,this.starts,this.descriptionPlace, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Icono con estrellas llenas
    final star = Container (
      margin: const EdgeInsets.only(
          top: 445.0,
          right: 3.0
      ),
      child: const Icon(
        Icons.star,
        size: 30.0,
        color:  Color(0xFFf2C611),
      ),
    );

    //Icono con estrellas a la mitad
    final starHalf = Container (
      margin: const EdgeInsets.only(
          top: 445.0,
          right: 3.0
      ),
      child: const Icon(
        Icons.star_half,
        size: 30.0,
        color:  Color(0xFFf2C611),
      ),
    );

    //Icono con estrellas a la vacias
    final starBorder = Container (
      margin: const EdgeInsets.only(
          top: 445.0,
          right: 3.0
      ),
      child: const Icon(
        Icons.star_border,
        size: 30.0,
        color:  Color(0xFFf2C611),
      ),
    );

    final titleStars = Row (
      children: <Widget>[
        Container (
          margin: const EdgeInsets.only(
              top: 440.0,
              left: 20.0,
              right: 20.0
          ),

          child: Text(
            namePlace,
            style: const TextStyle(
                fontFamily: 'Lato',
                fontSize: 45.0,
                fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),

        ),

        Row(
          children: <Widget>[
            star,
            star,
            star,
            star,
            starBorder
          ],
        )
      ],
    );


    final descApp=Row(
      children: [
        Container(
          margin: const EdgeInsets.only(
              top: 30.0,
              left: 20.0
          ),

          child: Text(
            descriptionPlace,
            style: const TextStyle(
                fontFamily: 'Lato',
                fontSize: 28.0,
                fontWeight: FontWeight.normal,
                color: Color(0xFF56575a)
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );


    final contentApp=Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titleStars,
        descApp,
        ButtonPurple("Navigate")
      ],
    );

    return contentApp;

  }

}