import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:frifri/src/features/avia/presentation/aviva.dart';
import 'package:frifri/src/features/more/presentation/screens/more_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:frifri/src/features/more/wrappers/localization_wrapper.dart';
import 'package:frifri/src/features/navbar/navbar.dart';
import 'package:frifri/src/features/service/presentation/screens/service_screen.dart';

/// {@template application}
/// Application widget.
/// {@endtemplate}
class Application extends StatelessWidget {
  /// {@macro application}
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: LocalizaitonScope.of(context).locale,
      home:  AviaScreen(),
    );
  }
}
