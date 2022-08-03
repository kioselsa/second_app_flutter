import 'package:flutter/material.dart';
import 'home_trips.dart';
import 'users/users_home.dart';
class MyTrips extends StatefulWidget {

  const MyTrips({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyTrips();
  }
  
}

class _MyTrips extends State<MyTrips> {
  int indexTap=0;
  final List<Widget>widgetsChildren=[
    HomeTrips(),
    const UsersList()
  ];

  void onTapTapped(int index){
    setState(() {
      indexTap=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
            primaryColor: Colors.purple,

          ),
          child: BottomNavigationBar(
            onTap: onTapTapped,
            currentIndex: indexTap,
            iconSize: 55.0,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label:"Home"
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label:"Search"
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label:"Users"
              ),
            ],
          )
      ),
    );
  }
  
}