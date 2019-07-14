void main(List<String> argv) {
  print('Hello World');

  for (var i = 0; i < argv.length; i++) {
    print('argument at index $i is ${argv[i]}');
  }
}