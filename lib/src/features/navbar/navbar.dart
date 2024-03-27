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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 40),
        width: 65,
        height: 65,
        child: FloatingActionButton(
          backgroundColor: Colors.red,
          elevation: 0,
          onPressed: () => debugPrint("HELLO"),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          child: SvgPicture.asset("assets/icons/more.svg"),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          // margin: EdgeInsets.only(left: 8, right: 8, bottom: 34, top: 0),
          height: 76,
          padding: const EdgeInsets.all(50),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.blue.withOpacity(0.8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(width: 50, height: 50, color: Colors.amber),
              Container(width: 50, height: 50, color: Colors.amber),
              Container(),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
