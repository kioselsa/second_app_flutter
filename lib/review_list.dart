import 'package:flutter/material.dart';
import 'package:second_app_flutter/review.dart';
class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    //Lista de reviews, aquí creamos cada uno de los reviews que queremos que aparescan en la app
    final reviews=Column(
      //Alineamos la información en cada columna
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Review('assets/img/abtOscar.jpg','Oscar Delgado', '1 review 5 photos', 'Excelente lugar, super recomendado'),
        Review('assets/img/abtElen.jpg','María Elena Gutiérrez', '1 review 2 photos', 'Buen lugar'),
        Review('assets/img/abtKimi.jpg','Kimberly Delgado', '2 review 5 photos', 'Excelente lugar, super recomendado'),
        Review('assets/img/abtSami.jpg','Samantha Delgado', '1 review 1 photos', 'Excelente lugar, super recomendado'),
      ],
    );

    return reviews;
  }
  
}