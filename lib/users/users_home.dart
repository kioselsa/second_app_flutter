import 'package:flutter/material.dart';
import 'user_gradient_back.dart';
import 'user_image_list.dart';
class UsersList extends StatelessWidget{
  const UsersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body:Stack(
          children: [
            ListView(
              children: [
                //Este containel lo puse para que no se encimara la lista con el encabezado
                Container(
                  margin: const EdgeInsets.only(
                    top:260.0,
                  ),
                ),
                const UserImageList(),
              ],
            ),
            GradientBack("Usuarios"),
          ],
        ),
    );
  }

}