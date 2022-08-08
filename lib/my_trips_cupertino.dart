import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_trips.dart';
import 'users/users_home.dart';
import 'profile/home_profile.dart';

class MyTripsCupertino extends StatelessWidget
{
  const MyTripsCupertino({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        bottomNavigationBar: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
              backgroundColor: Colors.white.withAlpha(10),//Color desvanecido en CupertinoTabScaffold
              iconSize: 40.0,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Home"
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search ),
                  label: "Search"
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: "users"
                ),
              ]
          ),
          //Funcionalidad de los botones del Navigation Bar
          tabBuilder: (BuildContext context, int index) {
            switch (index) {
              case 0:
                return CupertinoTabView(
                  builder: (BuildContext context) => HomeTrips(),
                );
                break;
              case 1:
                return CupertinoTabView(
                  builder: (BuildContext context) => const UsersList(),
                );
                break;
              case 2:
                return CupertinoTabView(
                  builder: (BuildContext context) => const HomeProfile(),
                );
                break;
              default:
                return CupertinoTabView(
                  builder: (BuildContext context) => HomeTrips(),
                );
            }
          },
        ),
    );
  }
}