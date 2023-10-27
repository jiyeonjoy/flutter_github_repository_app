import 'package:logger/logger.dart';

var logger = Logger(
  printer: PrettyPrinter(),
  output: logConsoleOutPut,
);

var logConsoleOutPut = LogViewerConsoleOutput();

typedef LogOutputListener = void Function(OutputEvent event);

class LogViewerConsoleOutput extends LogOutput {
  List<LogOutputListener> logOutputListeners = [];

  addListener(LogOutputListener listener) {
    logOutputListeners.add(listener);
  }

  removeListener(LogOutputListener listener) {
    logOutputListeners.remove(listener);
  }

  clearAllListener() {
    logOutputListeners.clear();
  }

  @override
  void output(OutputEvent event) {
    event.lines.forEach(print);
    for (var listener in logOutputListeners) {
      listener(event);
    }
  }
}
