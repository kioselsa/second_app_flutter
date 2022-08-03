import 'package:flutter/material.dart';
import 'users/users_home.dart';
class ButtonPurple extends StatelessWidget{
  String buttonText="Navigate";
  ButtonPurple(this.buttonText,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final boton=InkWell(
      //Para poder agregar funcionalidad a un boton agregamos onTap
      onTap: (){
        //Codigo para mostrar un mensaje emergente
        /*ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: const Text('Navegando'),
          duration: const Duration(seconds: 3),
          action: SnackBarAction(
            label: 'My second app',
            onPressed: () { },
          ),
        ));*/
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const UsersList()
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(
          top: 50.0,
          left: 20.0,
          right: 50.0
        ),
        height: 80.0,
        width: 220.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60.0),
          gradient: const LinearGradient(
            colors:[
              Color(0xFF4268D3),
              Color(0xFF584CD1)
            ],
            stops: [0.0,0.6],
            tileMode: TileMode.clamp
          )
        ),
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(
              fontSize: 30.0,
              fontFamily: "Lato",
              color: Colors.white
            ),
          ),
        ),
      ),
    );
    return boton;
  }

}