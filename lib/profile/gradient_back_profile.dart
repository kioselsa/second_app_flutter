import 'package:flutter/material.dart';

class GradientBackProfile extends StatelessWidget{
  String title="";
  GradientBackProfile(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    //Esta es la parte del header de la app con un color tipo gradient
    final gradient=Container(
      height: 500.0,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF4268D3),
            Color(0xFF584CD1)
          ],
          begin: FractionalOffset(0.2, 0.5),
          end: FractionalOffset(1.0, 0.6),
          stops: [0.0,0.4],
          tileMode: TileMode.clamp
        ),
      ),
      child: Row(
          children: [
          Text(
          title,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 45.0,
              fontFamily: "Lato",
              fontWeight: FontWeight.bold
            ),
          ),
          const Icon(Icons.circle,size: 35.0,color: Colors.white,)
          ],
        ),
      );
    return gradient;
  }

}