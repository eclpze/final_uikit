import 'package:logger/logger.dart';

/// Класс отвечает за логирование событий различных уровней (debug, info, error)
/// Автор создания: 2
/// Дата создания: 28.05.2026
class Logging {
  var log = Logger();

  // Форматирование сообщения в консоль
  // Автор создания: 2
  // Дата создания: 28.05.2026∆
  // Входные параметры: тег, событие и детали
  // Возращаемые данные: формат сообщения
  String? _format(String tag, String event, String details) {
    return '[$tag]: $event — $details';
  }

  // Лог уровня debug
  // Автор создания: 2
  // Дата создания: 28.05.2026∆
  // Входные параметры: тег, событие и детали
  // Возращаемые данные: лог в консоль
  void debug(String tag, String event, String details) {
    log.d(_format(tag, event, details));
  }

  // Лог уровня info
  // Автор создания: 2
  // Дата создания: 28.05.2026∆
  // Входные параметры: тег, событие и детали
  // Возращаемые данные: лог в консоль
  void info(String tag, String event, String details) {
    log.i(_format(tag, event, details));
  }

  // Лог уровня error
  // Автор создания: 2
  // Дата создания: 28.05.2026∆
  // Входные параметры: тег, событие и детали
  // Возращаемые данные: лог в консоль
  void error(String tag, String event, String details, var error) {
    log.d(_format(tag, event, details), error: error);
  }
}
