void main(List<String> args) {
  () {}(); // empty anon func
  () {return 5;}(); // arg-less anon func
  (int x) {return x * 5;}(5); // one-arg anon func
}