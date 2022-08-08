import 'package:flutter/material.dart';

class MenuIconos extends StatefulWidget {
  const MenuIconos({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // Retornamos el metodo _FloatingActionButtonGreen que contiene el State que es el metodo que espera un StatefulWidget
    return _MenuIconos();
  }

}

//Una Clase que hereda de StatefulWidget necesita tener otra clase que herede de State
// Para este caso se crea otra case de nombre similia pero con un guion bajo.
//Aqui es donde construimos nuestro Widget
class _MenuIconos extends State<MenuIconos> {

  @override
  Widget build(BuildContext context) {
    // En este caso crearemos un boton
    //Witget Marcador
    final buttonMark = Container(
      margin: const EdgeInsets.only(
        top: 280.0, //Posision en la pantalla
      ),

      child: FloatingActionButton(
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xFF584CD1),
        mini: true,//Tipo de tamaño mini
        tooltip: "Fav", //Si se pasa un el elemento con un mouse
        //onPressed: onPressedFav,
        onPressed: () {  },
        child: const Icon(
            Icons.bookmark_border
        ),
      ),
    );

    final buttonTv = Container(
      margin: const EdgeInsets.only(
        top: 280.0,//Posision en la pantalla
      ),

      child: FloatingActionButton(
        backgroundColor: const Color(0xFFA7B2E3),
        foregroundColor: const Color(0xFF584CD1),
        mini: true, //Tipo de tamaño mini
        tooltip: "Fav", //Si se pasa un el elemento con un mouse
        //onPressed: onPressedFav,
        onPressed: () {  },
        child: const Icon(
            Icons.tv
        ),
      ),
    );

    final buttonAdd = Container(
      margin: const EdgeInsets.only(
        top: 280.0,//Posision en la pantalla
      ),

      child: FloatingActionButton(
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xFF584CD1),
        //mini: true,//Tipo de tamaño mini
        tooltip: "Fav", //Si se pasa un el elemento con un mouse
        //onPressed: onPressedFav,
        onPressed: () {  },
        child: const Icon(
            Icons.add
        ),
      ),
    );

    final buttonEmail = Container(
      margin: const EdgeInsets.only(
        top: 280.0,//Posision en la pantalla
      ),

      child: FloatingActionButton(
        backgroundColor: const Color(0xFFA7B2E3),
        foregroundColor: const Color(0xFF584CD1),
        mini: true,//Tipo de tamaño mini
        tooltip: "Fav", //Si se pasa un el elemento con un mouse
        //onPressed: onPressedFav,
        onPressed: () {  },
        child: const Icon(
            Icons.email
        ),
      ),
    );

    final buttonPeople = Container(
      margin: const EdgeInsets.only(
        top: 280.0,//Posision en la pantalla
      ),

      child: FloatingActionButton(
        backgroundColor: Color(0xFFA7B2E3),
        foregroundColor: Color(0xFF584CD1),
        mini: true,//Tipo de tamaño mini
        tooltip: "Fav", //Si se pasa un el elemento con un mouse
        //onPressed: onPressedFav,
        onPressed: () {  },
        child: const Icon(
            Icons.person
        ),
      ),
    );

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,//Coloque el espacio libre de manera uniforme entre los hijos, así como la mitad de ese espacio antes y después del primer y último hijo
          children: [
            buttonMark,
            buttonTv,
            buttonAdd,
            buttonEmail,
            buttonPeople
          ],
        )
      ],
    );
  }
}