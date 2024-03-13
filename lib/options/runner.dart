import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:frifri/src/common/dependencies/dependencies.dart';
import 'package:frifri/src/common/utils/logger/logger.dart';
import 'package:frifri/src/features/application/conf/app_conf.dart';

typedef Launch = Future<void>;

/// {@template runner}
///  _RunnerConf class.
/// {@endtemplate}
base class _RunnerConf {
  /// {@macro runner}

  const _RunnerConf._();
  Future<void> runApplication() async {
    FlutterError.onError = (dtl) {
      FlutterError.presentError(dtl);
      logger.e('FlutterError', error: dtl.exception, stackTrace: dtl.stack);
      if (kReleaseMode) exit(1);
    };

    PlatformDispatcher.instance.onError = (error, stack) {
      logger.e('PlatformDispatcher', error: error, stackTrace: stack);
      return true;
    };

    final dependencies = Dependencies();
    dependencies.initialize();

    final appConf =
        AppConfigure(dependencies: dependencies, locale: Locale('ru'));

    appConf.launch();
  }
}

/// {@template runner}
/// Runner class.
/// {@endtemplate}
abstract final class Runner {
  /// {@macro runner}

  /// Private instance [_RunnerConf] for calling [runApplicaiton].
  static const _runnerConf = _RunnerConf._();

  /// Start application function.
  static Launch get launchApplication => _runnerConf.runApplication();
}
