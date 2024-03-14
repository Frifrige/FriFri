import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
      body: SafeArea(
        child: Center(
            child: Column(
          children: <Widget>[
            Text(AppLocalizations.of(context)!.helloRadmir),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  LocalizationWrapper.maybeOf(context)!.setLocale('ru');
                },
                child: const Text('Select en language')),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  LocalizationWrapper.maybeOf(context)!.setLocale('en');
                },
                child: const Text('Select ru langugage'))
          ],
        )),
      ),
    );
  }
}