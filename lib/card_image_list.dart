import 'package:flutter/material.dart';
import 'card_image.dart';
class CardImageList extends StatelessWidget{
  const CardImageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final imagen=Container(
      height: 660.0,
      child: ListView(
        padding: const EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children:[
          CardImage("assets/img/carousel/toronto.jpg"),
          CardImage("assets/img/carousel/canada1.jpg"),
          CardImage("assets/img/carousel/canada2.jpg"),
          CardImage("assets/img/carousel/canada3.jpg"),
          CardImage("assets/img/carousel/canada4.jpg"),
          CardImage("assets/img/carousel/canada5.jpg"),
        ],
      ),
    );
    return imagen;
  }

}