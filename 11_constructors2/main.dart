void main() {
  print('start');

  var s = Sub(11);
  print(s);
  print('s.y: ${s.y}');
  print('s.x: ${s.x}');

  print('');

  var s2 = Sub.X(11, 4);
  print(s);
  print('s2.y: ${s2.y}');
  print('s2.x: ${s2.x}');
  print('end');
}

class Super {
  int x;
  
  Super() {
    x = 10;
  }

  Super.X(this.x);
}

class Sub extends Super {
  int y;

  Sub(this.y) : super();
  Sub.X(this.y, int x) : super.X(x);
}