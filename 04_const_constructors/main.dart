// run with `dart --enable-asserts 04_const_constructors/main.dart`
main(List<String> arguments) {
  var ip1 = ImmutablePoint(5, 4);
  var ip2 = ImmutablePoint(5, 3);

  const ip3 = ImmutablePoint(4, 2);
  const ip4 = ImmutablePoint(4, 2);

  assert(ip1 != ip2, 'ip1 == ip2');
  assert(ip3 == ip4, 'ip3 != ip4');
  assert(ip1 != ip3, 'ip1 == ip3');
}

class ImmutablePoint {
  final int x;
  final int y;

  const ImmutablePoint(this.x, this.y);
}