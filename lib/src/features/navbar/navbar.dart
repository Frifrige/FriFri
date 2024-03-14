import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'dart:math' as math;

import 'package:flutter_svg/flutter_svg.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        margin: EdgeInsets.only(top: 40),
        width: 65,
        height: 65,
        child: FloatingActionButton(
          backgroundColor: Colors.red,
          elevation: 0,
          onPressed: () => debugPrint("HELLO"),
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 3, color: Colors.red),
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 8, right: 8, bottom: 34, top: 0),
          height: 76,
          padding: const EdgeInsets.all(50),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.blue.withOpacity(0.8),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Row(
              children: [
                
                
              ],
            ),
          ),
        ),
      ),

      // bottomNavigationBar: Container(
      //   decoration:  BoxDecoration(borderRadius: BorderRadius.circular(16)),
      //   child: SafeArea(
      //     child: Container(
      //       padding: EdgeInsets.symmetric(vertical: 24, horizontal: 8),
      //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: Colors.red),
      //       child: NavigationBar(
      //           bo
      //         destinations: [
      //           NavigationDestination(icon: SvgPicture.asset("assets/icons/fire.svg"), label: "Home", selectedIcon: SvgPicture.asset("assets/icons/fire_ac.svg"),),
      //           NavigationDestination(icon: SvgPicture.asset("assets/icons/fire.svg"), label: "123"),
      //           NavigationDestination(icon: SvgPicture.asset("assets/icons/fire.svg"), label: "321"),
      //           NavigationDestination(icon: SvgPicture.asset("assets/icons/fire.svg"), label: "222")
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
