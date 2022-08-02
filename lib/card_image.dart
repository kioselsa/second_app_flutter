import 'package:flutter/material.dart';
import 'floating_action_button_green.dart';
class CardImage extends StatelessWidget{
  String pathImage="assets/img/carousel/toronto.jpg";
  CardImage(this.pathImage,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final card=Container(
      height: 660.0,
      width: 580.0,
      margin: const EdgeInsets.only(
        top: 160.0,
        left: 20.0
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        ),
        borderRadius: const BorderRadius.all(Radius.circular(30.0)),
        shape: BoxShape.rectangle,
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 30.0,
            offset: Offset(0.0, 0.10)
          )
        ]
      ),
    );

    final cardImage=Stack(
      alignment: const Alignment(0.9,1.1),
      children: [
        card,
        const FloatingActionButtonGreen()
      ],
    );

    return cardImage;
  }

}