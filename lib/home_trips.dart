import 'package:flutter/material.dart';
import 'package:second_app_flutter/review_list.dart';
import 'description_place.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget {
  String textDescription="""Lorem Ipsum is simply dummy text of the 
printing and typesetting industry. Lorem 
Ipsum has been the industry's standard 
dummy text ever since the 1500s, when 
an unknown printer took a galley of 
type and scrambled it to make a type 
specimen book.
  
It is a long established fact that a reader 
will be distracted by the readable content 
of a page when looking at its layout. The 
point of using Lorem Ipsum is that it has a 
more-or-less normal distribution of 
letters,as opposed to using 'Content here, 
content here', making it look like readable 
English. Many desktop publishing packages 
and web page editors now use Lorem 
Ipsum as their default model text, and 
a search for 'lorem ipsum' will uncover 
many web sites still in their infancy.""";

  HomeTrips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: Aqui ponemos toda la logica de la aplicación

   return Stack(
     children: [
       ListView(
         children: [
           DescriptionPlace("Canadá",4,textDescription),
           ReviewList()
         ],
       ),
       const HeaderAppBar()
     ],
   );
  }

}