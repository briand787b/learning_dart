main(List<String> arguments) {
  var ip = ImmutablePoint(5, 4);
  print('$ip');
}

class ImmutablePoint {
  final int x;
  final int y;

  const ImmutablePoint(this.x, this.y);
}