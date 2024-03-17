import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frifri/src/features/more/wrappers/localization_wrapper.dart';

/// {@template more_screen}
/// MoreScreen widget.
/// {@endtemplate}
class MoreScreen extends StatefulWidget {
  /// {@macro more_screen}
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => MoreScreenState();
}

class MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ЕЩЕ",
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/more_ic_1.svg",
                    width: 24,
                    height: 24,
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Text(
                    " Настройки",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                  ),
                  SizedBox(
                    width: 183,
                  ),
                  Container(
                    child: SvgPicture.asset(
                      "assets/icons/arr_r.svg",
                    ),
                    decoration: BoxDecoration(),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/more_ic_2.svg",
                    width: 24,
                    height: 24,
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Text(
                    " Аэропорт вылета",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                  ),
                  SizedBox(width: 130),
                  SvgPicture.asset("assets/icons/arr_r.svg"),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/more_ic_3.svg",
                    width: 24,
                    height: 24,
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Text(
                    " Язык",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                  ),
                  SizedBox(width: 227),
                  SvgPicture.asset("assets/icons/arr_r.svg"),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/more_ic_4.svg",
                    width: 24,
                    height: 24,
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Text(
                    " Валюта",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                  ),
                  SizedBox(width: 211),
                  SvgPicture.asset("assets/icons/arr_r.svg"),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/more_ic_5.svg",
                    width: 24,
                    height: 24,
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Text(
                    " Помощь",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                  ),
                  SizedBox(width: 204),
                  SvgPicture.asset("assets/icons/arr_r.svg"),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/more_ic_6.svg",
                    width: 24,
                    height: 24,
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Text(
                    " Конфиденциальность",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                  ),
                  SizedBox(width: 100),
                  SvgPicture.asset("assets/icons/arr_r.svg"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
