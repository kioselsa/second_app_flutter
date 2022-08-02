import 'package:flutter/material.dart';
import 'user_image.dart';
class UserImageList extends StatelessWidget{
  const UserImageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //Lista de usuarios, que aparecen en la app
    final reviews=Column(
      //Alineamos la información en cada columna
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        UserImage('Oscar Delgado','Experience 15 years','assets/img/abtOscar.jpg','assets/img/email/closed.jpg'),
        UserImage('María Elena Gutiérrez','Experience 10 years','assets/img/abtElen.jpg','assets/img/email/closed.jpg'),
        UserImage('Samantha Delgado','Experience 1 years','assets/img/abtSami.jpg','assets/img/email/open.jpg'),
        UserImage('Kimberly Delgado','Experience 3 years','assets/img/abtKimi.jpg','assets/img/email/closed.jpg'),
        UserImage('Jose Iraic','Experience 15 years','assets/img/abtIraic.jpg','assets/img/email/closed.jpg'),
        UserImage('Jess Gutiérrez','Experience 9 years','assets/img/abtJess.jpg','assets/img/email/open.jpg'),
      ],
    );

    return reviews;
  }

}