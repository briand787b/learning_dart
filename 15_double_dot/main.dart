void main(List<String> args) {
  HasFields()
    ..x = 4
    ..y = 3;

  HasMethods()
    ..doFn();
  
}

class HasFields {
  int x,y;
}

class HasMethods {
  void doFn() => print('hello world');
}