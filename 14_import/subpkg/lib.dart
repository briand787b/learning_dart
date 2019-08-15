class Lib {
  final String name;
  static final Map<String,Lib> _cache = {};

  factory Lib(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name];
    }

    final l = Lib._internal(name);
    _cache[name] = l;
    return l;
  }

  Lib._internal(this.name);
}