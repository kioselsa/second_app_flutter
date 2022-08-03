import 'package:flutter/material.dart';
import 'floating_action_button_green.dart';
class CardImage extends StatelessWidget{
  String pathImage="";
  CardImage(this.pathImage,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final card=Container(
      height: 280.0,
      width: 320.0,
      margin: const EdgeInsets.only(
        top: 110.0,
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

    final cardButton=Stack(
      alignment: const Alignment(0.9,1.1),
      children: [
        card,
        const FloatingActionButtonGreen()
      ],
    );

    return cardButton;
  }

}