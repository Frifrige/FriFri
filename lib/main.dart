import 'dart:async';

import 'package:frifri/src/common/options/runner.dart';
import 'package:frifri/src/common/utils/logger/logger.dart';

void main() => runZonedGuarded(() {
      Runner.launchApplication;
    }, (error, stack) {
      logger.e('Global Exception', error: error, stackTrace: stack);
    });
