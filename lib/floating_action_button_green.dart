import 'package:flutter/material.dart';
class FloatingActionButtonGreen extends StatefulWidget{
  const FloatingActionButtonGreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonGreen();
  }

}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    void onPressedFav(){
      //Metodo para accionar cuando den click en el botón

      //Codigo para mostrar un mensaje emergente
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('Dio click en favorito',
            style: TextStyle(
              fontSize: 35.0,
              fontFamily: "Lato"
            ),
          ),
          duration: const Duration(seconds: 3),
          action: SnackBarAction(
            label: 'My first app',
            textColor: Colors.red,
            onPressed: () { },
          ),
      ));
    }

    //Este es el boton que aparece encima de las cards y large es para el tamaño, hay small, y large
    return FloatingActionButton(
      backgroundColor: const Color(0xFF11DA53),
      tooltip:"Favorito",
      onPressed: () { onPressedFav(); },
      child: const Icon(
        Icons.favorite_border,
      ),
    );
  }
  
}