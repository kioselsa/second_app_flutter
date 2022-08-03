import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget{
  String title="Popular";
  GradientBack(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    //Funcion que convierte un container en un boton (InkWell)
    final menuIco = InkWell(
      //Metodo que hace una acción cuando se da click en el container
      onTap: (){
        //Función que regresa al principio de la app
        Navigator.pop(context);
      },
      child: Container(
        margin: const EdgeInsets.only(
          top: 20.0,
          left: 20.0,
        ),

        child: const Icon(
          Icons.menu,
          size: 40.0,
          color: Colors.white,
        ),
      ),
    );


    //Esta es la parte del header de la app con un color tipo gradient
    final gradient=Container(
      height: 280.0,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF4268D3),
            Color(0xFF584CD1)
          ],
          begin: FractionalOffset(0.2, 0.0),
          end: FractionalOffset(1.0, 0.6),
          stops: [0.0,0.6],
          tileMode: TileMode.clamp
        ),
      ),

      child: Row(
        children: [
          menuIco,
          Expanded(
            flex: 1,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.25,
              child:  Text(
                title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );

    return gradient;
  }

}