import 'package:flutter/material.dart';
import 'user_gradient_back.dart';
import 'user_image_list.dart';
class UsersList extends StatelessWidget{
  const UsersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body:
          Column(
            children: [
              GradientBack("Usuarios"),
              const UserImageList(),
            ],
          ),
    );
  }

}