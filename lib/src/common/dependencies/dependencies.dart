import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// {@template dependencies}
/// Dependencies class.
/// {@endtemplate}
base class Dependencies {
  /// {@macro dependencies}

/* start dependency region. */
  late SharedPreferences sharedPreferences;
/* end dependency region. */

  /// Iniatilziation dependencies.
  Future<void> initialize() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  /// Get dependencies in the widget tree via [context].
  static Dependencies requires(BuildContext context) =>
      context.getInheritedWidgetOfExactType<DependenciesScope>()!.dependencies;
}

/// {@template dependencies}
/// DependenciesScope widget.
/// {@endtemplate}
class DependenciesScope extends InheritedWidget {
  /// {@macro dependencies}
  const DependenciesScope({
    required this.dependencies,
    required super.child,
    super.key,
  });

  final Dependencies dependencies;

  static DependenciesScope of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<DependenciesScope>()!;

  @override
  bool updateShouldNotify(DependenciesScope oldWidget) => false;
}
