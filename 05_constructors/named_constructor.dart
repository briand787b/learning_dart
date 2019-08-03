class NamedConstConstructor {
  static const int secondsPerHour = 3600;
  static const int secondsPerMinute = 60;
  
  final int _duration;

  const NamedConstConstructor({
    int hours = 0,
    int minutes = 0,
    int seconds = 0
  }) : this._seconds(
    secondsPerHour * hours +
    secondsPerMinute * minutes +
    seconds 
  );

  const NamedConstConstructor._seconds(this._duration);

  int get inMinutes => this._duration ~/ NamedConstConstructor.secondsPerMinute;

  int get inHours => this._duration ~/ NamedConstConstructor.secondsPerHour; 

  int get inSeconds => this._duration;
}