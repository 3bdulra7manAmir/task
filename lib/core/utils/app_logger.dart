import 'package:logger/logger.dart';


class AppLogger {
  AppLogger._();
  
  static const String _reset = '\x1B[0m';
  static const String _green = '\x1B[32m';
  static const String _white = '\x1B[97m';
  static const String _yellow = '\x1B[33m';
  static const String _red = '\x1B[31m';
  //static const String _darkGray = '\x1B[90m';
  //static const String _lightGray = '\x1B[37m';

  static final Logger _logger = Logger(printer: SimplePrinter(colors: false),);

  static void info(String message) => _logger.i('$_green$message$_reset');
  static void debug(String message) => _logger.d('$_white$message$_reset');
  static void warning(String message) => _logger.w('$_yellow$message$_reset');

  static void error(String message, {Object? error, StackTrace? stackTrace}) =>
    _logger.e('$_red$message$_reset', error: error == null ? null : '$_red$error$_reset',
      stackTrace: stackTrace);
}


