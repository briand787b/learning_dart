const alist = const <Map<String,String>>[
  {
    "commonKeyA": "A",
    "commonKeyB": "B",
  },
  {
    "commonKeyA": "A",
    "commonKeyB": "B",
  },
];

void main() {
  print('start');

  print(alist.map((elem) => elem["commonKeyA"]).join(","));
  Iterable<String> x = [];
  print(x.length);
  pp(alist.map((mp) => mp["commonKeyB"]).toList());

  print('end');
}

void pp(List<String> l) {
  print(l.map(((String s) => "_"+s+"_")).join(","));
}