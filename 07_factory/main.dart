void main(List<String> args) {
  var logger1 = Logger('UI');
  logger1.log('button clicked');

  var logger2 = Logger('UI');
  assert(logger1 == logger2, 'loggers are not equal');
}

class Logger {
  final String name;
  bool mute = false;

  static final Map<String, Logger> _cache = 
    <String, Logger>{};

  factory Logger(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name];
    }

    final logger = Logger._internal(name);
    _cache[name] = logger;
    return logger;
  }

  Logger._internal(this.name);

  void log(String msg) {
    if (!mute) print(msg);
  }
}