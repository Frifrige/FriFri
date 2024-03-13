import 'package:flutter/material.dart';

/// {@template localization_wrapper}
/// LocalizationWrapper widget.
/// {@endtemplate}
class LocalizationWrapper extends StatefulWidget {
  /// {@macro localization_wrapper}
  const LocalizationWrapper(
      {super.key, required this.locale, required this.child});

  final Locale locale;
  final Widget child;
  static LocalizationWrapperState? maybeOf(BuildContext context) =>
      context.findAncestorStateOfType<LocalizationWrapperState>();

  @override
  State<LocalizationWrapper> createState() => LocalizationWrapperState();
}

class LocalizationWrapperState extends State<LocalizationWrapper> {
  late Locale locale;

  @override
  void initState() {
    super.initState();
    locale = widget.locale;
  }

  @override
  Widget build(BuildContext context) {
    return LocalizaitonScope(locale: locale, child: widget.child);
  }
}

/// {@template localization_wrapper}
/// LocalizaitonScope widget.
/// {@endtemplate}
class LocalizaitonScope extends InheritedWidget {
  /// {@macro localization_wrapper}
  const LocalizaitonScope({
    required this.locale,
    required super.child,
    super.key,
  });

  final Locale locale;

  static LocalizaitonScope of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<LocalizaitonScope>()!;
  @override
  bool updateShouldNotify(LocalizaitonScope oldWidget) =>
      locale != oldWidget.locale;
}
