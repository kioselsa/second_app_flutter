import 'package:flutter/material.dart';
import 'package:second_app_flutter/floating_action_button_green.dart';

class CardImageProfile extends StatelessWidget {

  String pathImage = "assets/img/beach.jpeg";
  String titleImage = "Knuckles Mountains Range";
  String descriptionImage = "Hiking water tall hunting, Natural bath, Scenery y Photography";
  String steps = "Steps 123,123,123";

  //Creamos nuestro constructor
  CardImageProfile(this.pathImage, this.titleImage, this.descriptionImage, this.steps);

  @override
  Widget build(BuildContext context) {

    // Widget para titulo de la imagen
    final titleCard = Container(
      margin: const EdgeInsets.only(
          top: 10,
          left: 20
      ),
      child: Text(
        titleImage,
        textAlign: TextAlign.left,
        style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 20.0,
            fontWeight: FontWeight.bold
        ),
      ),
    );

    // Widget que contiene la descripcion
    final descriptionCard = Container(
      margin: const EdgeInsets.only(
          top: 10.0,//Posision en la pantalla
          left: 20
      ),
      child: Text(
        descriptionImage,
        textAlign: TextAlign.left,
        style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 14.0,
            color: Color(0xFFa3a5a7)
        ),
      ),
    );

    // Widget que contiene los pasos
    final stepsCard = Container(
      margin: const EdgeInsets.only(
          top: 10.0,//Posision en la pantalla
          left: 20
      ),
      child: Text(
        steps,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 15.0,
          fontWeight: FontWeight.bold,
          color: Color.fromRGBO(232, 166, 90, 1),
        ),
      ),
    );


    final card = Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,//tamaño de la pantalla automatico
          height: 220,
          margin: const EdgeInsets.only(
            top: 25,
            //left: 20
          ),
          //Agregamos la decoracion como imagen
          decoration: BoxDecoration(
              image:DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(pathImage)
              ),
              //Asemos que la imagen sea redonda
              borderRadius: const BorderRadius.all(Radius.circular(25)),
              shape: BoxShape.rectangle,//Haacemos que la imagen sea rectangular
              boxShadow: const <BoxShadow>[//Agregamos una sombra
                BoxShadow(
                    color: Colors.black38,
                    blurRadius: 25,//Que tan degradado quiero que quede
                    offset: Offset(0,8)//la posicion de la sombra en X y en Y
                )
              ]
          ),
        ),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width,//tamaño de la pantalla automatico
            height: 120.0,
            margin: const EdgeInsets.only(
                top: 180,
                left: 40,
                right: 40,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,//Alineamos al inicio que es como si se alineara a la izquierda
              children: [//Realizamos la apilacion de nuestros widgets
                titleCard,
                descriptionCard,
                stepsCard
              ],
            ),
            //Agregamos la decoracion como imagen
            decoration: const BoxDecoration(
                color: Colors.white,
                //Asemos que la imagen sea redonda
                borderRadius: BorderRadius.all(Radius.circular(20)),
                shape: BoxShape.rectangle,//Haacemos que la imagen sea rectangular
                boxShadow: <BoxShadow>[//Agregamos una sombra
                  BoxShadow(
                      color: Colors.black38,
                      blurRadius: 15,//Que tan degradado quiero que quede
                      offset: Offset(0,7)//la posicion de la sombra en X y en Y
                  )
                ]
            ),
          ),
        )
      ],
    );

    //Devolvemos la imagen
    return Stack(
      alignment: const Alignment(0.6,1.1),
      children: [
        card,
        const FloatingActionButtonGreen()//Mandamos llamar nuestro metodo que viene de la clase exportada floating_action_button_green
      ],
    );
  }

}