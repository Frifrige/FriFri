import 'package:flutter/material.dart';
import 'package:frifri/src/common/ui_component/text_style/text_style.dart';

/// {@template country_text_widget}
/// CountryTextWidget widget.
/// {@endtemplate}
class CountryTextWidget extends StatelessWidget {
  /// {@macro country_text_widget}
  const CountryTextWidget({
    super.key,
    required this.title,
    required this.subTitle,
    required this.crossAxisAlignment,
  });

  final CrossAxisAlignment crossAxisAlignment;
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Text(
          title,
          style: countryTopTextStyle,
        ),
        Text(
          subTitle,
          style: countryBottomTextStyle,
        )
      ],
    );
  }
}
