import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class ServiceScreen extends StatefulWidget {
  const ServiceScreen({super.key});

  @override
  State<ServiceScreen> createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Сервис"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.12),
                      borderRadius: BorderRadius.circular(16)),
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    "assets/icons/service_ic_1.svg",
                    width: 24,
                    height: 24,
                  ),
                ),
                SizedBox(
                  width: 9,
                ),
                Text(
                  "Авиабилеты",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                ),
                SizedBox(
                  width: 183,
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.12),
                      borderRadius: BorderRadius.circular(16)),
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    "assets/icons/service_ic_2.svg",
                    width: 24,
                    height: 24,
                  ),
                ),
                SizedBox(
                  width: 9,
                ),
                Text(
                  "Страховка",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                ),
                SizedBox(
                  width: 183,
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.12),
                      borderRadius: BorderRadius.circular(16)),
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    "assets/icons/service_ic_3.svg",
                    width: 24,
                    height: 24,
                  ),
                ),
                SizedBox(
                  width: 9,
                ),
                Text(
                  "Экскурсии",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                ),
                SizedBox(
                  width: 183,
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.12),
                      borderRadius: BorderRadius.circular(16)),
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    "assets/icons/service_ic_4.svg",
                    width: 24,
                    height: 24,
                  ),
                ),
                SizedBox(
                  width: 9,
                ),
                Text(
                  "Аренда авто",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                ),
                SizedBox(
                  width: 183,
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.12),
                      borderRadius: BorderRadius.circular(16)),
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    "assets/icons/service_ic_5.svg",
                    width: 24,
                    height: 24,
                  ),
                ),
                SizedBox(
                  width: 9,
                ),
                Text(
                  "Санатории",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                ),
                SizedBox(
                  width: 183,
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.12),
                      borderRadius: BorderRadius.circular(16)),
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    "assets/icons/service_ic_6.svg",
                    width: 24,
                    height: 24,
                  ),
                ),
                SizedBox(
                  width: 9,
                ),
                Text(
                  "Симкарты",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                ),
                SizedBox(
                  width: 183,
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.12),
                      borderRadius: BorderRadius.circular(16)),
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    "assets/icons/service_ic_7.svg",
                    width: 24,
                    height: 24,
                  ),
                ),
                SizedBox(
                  width: 9
                ),
                Text(
                  "Компенсация",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                ),
                SizedBox(
                  width: 183,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
