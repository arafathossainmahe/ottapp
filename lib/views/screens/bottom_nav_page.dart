
import 'package:flutter/material.dart';
import 'package:ottapp/Favourite/Favourite_UI.dart';
import 'package:ottapp/views/screens/discover_new_page.dart';
import 'package:ottapp/views/screens/home_page.dart';

class OTTBottomNav extends StatefulWidget {
  const OTTBottomNav({super.key});

  @override
  State<OTTBottomNav> createState() => _OTTBottomNavState();
}

class _OTTBottomNavState extends State<OTTBottomNav> {
  int pageIndex = 0;
  var pages = [const HomePage(), const DiscoverNewPage(), const My_Favourite()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(pageIndex),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: BottomNavigationBar(
              onTap: (value) {
                setState(() {
                  pageIndex = value;
                });
              },
              currentIndex: pageIndex,
              iconSize: 25,
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.grey,
              showUnselectedLabels: false,
              showSelectedLabels: false,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_filled), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(Icons.compass_calibration_rounded), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
                //BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
              ],
            ),
          ),
        ),
      ),
      extendBody: true,
    );
  }
}
