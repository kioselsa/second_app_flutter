import 'package:flutter/material.dart';
import 'card_image_profile.dart';

class CardImageListProfile extends StatelessWidget {
  const CardImageListProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      //height: 400,
      margin: const EdgeInsets.only(
        top: 400,
        //left: 20
      ),
      child: ListView(
        padding: const EdgeInsets.all(15),
        scrollDirection: Axis.vertical,//Axis para que el Scroll sea Horizontal
        children: [//Agregamos todos los elementos que estan componiendo la lista
          CardImageProfile("assets/img/carousel/canada1.jpg","Knuckles Mountains Range","Hiking water tall hunting, Natural bath, Scenery y Photography","Steps 123,123,123"),
          CardImageProfile("assets/img/carousel/canada2.jpg","Knuckles Mountains Range","Hiking water tall hunting, Natural bath, Scenery y Photography","Steps 123,123,123"),
          CardImageProfile("assets/img/carousel/canada3.jpg","Knuckles Mountains Range","Hiking water tall hunting, Natural bath, Scenery y Photography","Steps 123,123,123"),
          CardImageProfile("assets/img/carousel/canada4.jpg","Knuckles Mountains Range","Hiking water tall hunting, Natural bath, Scenery y Photography","Steps 123,123,123"),
        ],
      ),
    );
  }

}