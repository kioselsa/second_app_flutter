import 'package:flutter/material.dart';
class UserProfile extends StatelessWidget{
  String pathImageProfile="";
  String name="";
  String email="";

  UserProfile(this.pathImageProfile,this.name,this.email,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final imageProfile=Container(
      margin: const EdgeInsets.only(
          top: 200.0,
          left: 20.0
      ),
      width: 90.0,
      height: 100.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
            width: 2,
            color: Colors.white
        ),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImageProfile),
        ),
      ),
    );

    //fila con el nombre del usuario
    final userName=Container(
      margin: const EdgeInsets.only(
          top: 220.0,
          left: 40.0
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 24.0,
            color: Colors.white70,
        ),
      ),
    );

    // fila con la informacion del usuario
    final userEmail=Container(
      margin: const EdgeInsets.only(
          left: 40.0
      ),
      child: Text(
        email,
        textAlign: TextAlign.left,
        style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 22.0,
            color: Color(0xFFa3a5a7)
        ),
      ),

    );

    final userRegister=Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        userName,
        userEmail
      ],
    );

    final userProfile=Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        imageProfile,
        userRegister
      ],
    );

    return userProfile;
  }

}