main() {
  var s = Sub();
  print(s.runtimeType);
  print(s.x);

  print('\n');

  var si = Sub.Init(5, 10);
  print(si.runtimeType);
  print(si.x);
}

class Super {
  int x;

  Super() {
    print('hello from Super');
    this.x = 0;
  }

  Super.Init(this.x) {
    print('hello from Super.Init');
  } 
}

class Sub extends Super {
  int y;

  Sub() {
    print('hello from Sub');
    this.x = 0;
    this.y = 0;
  }

  Sub.Init(this.y, int x) : super.Init(x) {
    print('hello from Sub.Init');
  }
}