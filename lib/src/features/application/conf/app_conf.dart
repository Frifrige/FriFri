import 'package:flutter/material.dart';
import 'package:frifri/src/common/dependencies/dependencies.dart';
import 'package:frifri/src/features/application/widgets/application.dart';
import 'package:frifri/src/features/more/wrappers/localization_wrapper.dart';

/// {@template app_conf}
/// AppConfigure widget.
/// {@endtemplate}
class AppConfigure extends StatelessWidget {
  /// {@macro app_conf}
  const AppConfigure(
      {super.key, required this.dependencies, required this.locale});

  final Dependencies dependencies;

  final Locale locale;

  void launch() => runApp(this);
  @override
  Widget build(BuildContext context) {
    return DependenciesScope(
        dependencies: dependencies,
        child: LocalizationWrapper(locale: locale, child: const Application()));
  }
}
