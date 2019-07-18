void main(List<String> args) {
  var i = Init(4, 3);
  print(i.x);
  print(i.y);
  print('\n');

  var j = InitPlusSuper(5, 6);
  print(j.a);
  print(j.b);
  print(j.x);
  print(j.y);
}

class Init {
  int x,y;

  Init(int x, y)
    : this.x = x + 5,
    this.y = y + 5 {
      print('initialized x and y');
    }
}

class Super {
  int a,b;
  
  Super(this.a, this.b) {
    print('in Super');
  }
}

class InitPlusSuper extends Super {
  int x,y;
  
  InitPlusSuper(int x, y)
    : this.x = x, this.y = y,
    super(x+5, x+6) {
      print('in sub');
  }
}