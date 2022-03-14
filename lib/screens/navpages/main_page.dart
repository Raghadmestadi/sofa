import 'package:flutter/material.dart';
import 'package:sofa_app/screens/navpages/account_page.dart';
import 'package:sofa_app/screens/navpages/fav_page.dart';
import 'package:sofa_app/screens/navpages/shopping_bag.dart';

import '../home.dart';

class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex=0;
  final screens=[Home(),
  ShoppingPage(),
  Favorite(),
  Account(),
  
  
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

       bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
    selectedItemColor: Color.fromARGB(255, 56, 56, 56),
    unselectedItemColor:Colors.black45 ,
      currentIndex: selectedIndex,
      onTap: (index){
        setState(() {
          selectedIndex=index;
        });

      },
      items: [BottomNavigationBarItem(label: "Home",icon: Icon(Icons.home_outlined)),
    BottomNavigationBarItem(label: "Bag",icon: Icon(Icons.shopping_bag_outlined)),
     BottomNavigationBarItem(label: "Favorite",icon: Icon(Icons.favorite_border_outlined)),
      BottomNavigationBarItem(label: "my account",icon: Icon(Icons.person_outline_outlined))
    ]),
    body:  screens.elementAt(selectedIndex),   
    );
  }
}