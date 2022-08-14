import 'package:facebookappui/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'firstPage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

var pages = [
  FirstPage(),
  FirstPage(),
  FirstPage(),
  FirstPage(),
  FirstPage(),
  FirstPage(),

];
int currenIndex = 0;
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        actions: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Row(
              children: [
                Text(
                  'facebook',
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                const SizedBox(width: 200,),
                FaIcon(
                  FontAwesomeIcons.facebookMessenger, color: Colors.grey[400],),
                const SizedBox(width: 15,),
                FaIcon(FontAwesomeIcons.camera, color: Colors.grey[400],),
              ],
            ),
          ),
        ],
      ),
      body: pages[currenIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.black,
        ),
        child: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          currentIndex: currenIndex,
          onTap: (newIndex){
            setState(() {
              currenIndex = newIndex;
            });
          },
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.newspaper_outlined),
            label: 'feeds'),
            BottomNavigationBarItem(
                icon: Icon(Icons.people_outline),
                label: 'group'),
            BottomNavigationBarItem(
                icon: Icon(Icons.live_tv_outlined),
                label: 'video'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: 'profile'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_none),
                label: 'notifications'),
            BottomNavigationBarItem(
                icon: Icon(Icons.menu),
                label: 'menu'),
          ],
            ),
      ),
    );
  }
}
