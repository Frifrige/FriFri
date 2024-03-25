import 'package:flutter/material.dart';
import 'package:frifri/src/common/router/router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:frifri/src/features/more/wrappers/localization_wrapper.dart';

/// {@template application}
/// Application widget.
/// {@endtemplate}
class Application extends StatelessWidget {
  /// {@macro application}
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: LocalizaitonScope.of(context).locale,
      routerConfig: router,
    );
  }
}
