import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AviaScreen extends StatefulWidget {
  const AviaScreen({super.key});

  @override
  State<AviaScreen> createState() => _AviaScreenState();
}

class _AviaScreenState extends State<AviaScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 70),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(flex: 1),
                  const SizedBox(width: 20),
                  Text(
                    "ТБИЛИСИ",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  SizedBox(width: 20),
                  SvgPicture.asset("assets/icons/avia_ic.svg"),
                  SizedBox(width: 20),
                  Text(
                    "ТБИЛИСИ",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  Spacer(flex: 1),
                  Icon(Icons.close),
                ],
              ),
            ),
            const Divider(
              height: 20,
              color: Colors.grey,
            ),
            const SizedBox(height: 24),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Text("Когда"),
                  Spacer(),
                  Text("Обратно"),
                  Spacer(
                    flex: 2,
                  ),
                  Text("Цена")
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 25),
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "20 апр",
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            "2ч 35м",
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Text(
                            "20 апр",
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            "2ч 35м",
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                      Spacer(
                        flex: 2,
                      ),
                      Column(
                        children: [
                          Text(
                            "от 23 690",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff5B9CEC),
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 16,
                  );
                },
                itemCount: 4,
              ),
            )
          ],
        ),
      ),
    );
  }
}
