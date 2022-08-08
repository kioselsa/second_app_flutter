import 'package:flutter/material.dart';
import 'package:second_app_flutter/profile/gradient_back_profile.dart';
import 'package:second_app_flutter/profile/user_profile.dart';
import 'package:second_app_flutter/profile/menu_iconos.dart';
import 'package:second_app_flutter/profile/card_image_list_profile.dart';
class HomeProfile extends StatelessWidget
{
  const HomeProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:Stack(
        children: [
          GradientBackProfile("Profile"),
          UserProfile("assets/img/abtOscar.jpg","Oscar Delgado", "oscar@gmail.com"),
          const MenuIconos(),
          const CardImageListProfile(),
        ],
      ),
    );
  }

}