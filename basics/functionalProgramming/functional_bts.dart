void main() {
  List<Map<String, String>> ppl = [
    {
      "name": "로제",
      "group": "블랙핑크",
    },
    {
      "name": "지수",
      "group": "블랙핑크",
    },
    {
      "name": "뷔",
      "group": "bts",
    },
    {
      "name": "제이홉",
      "group": "bts",
    },
  ];
//   print(ppl);

  final parsedPpl = ppl
      .map(
        (x) => Person(
          name: x['name']!,
          group: x['group']!,
        ),
      )
      .toList();
//   print(parsedPpl);

  final pickBts = parsedPpl.where(
    (x) => x.group == 'bts',
  );
  print("pickBts: $pickBts");

  final res = ppl
      .map(
        (x) => Person(
          name: x["name"]!,
          group: x["group"]!,
        ),
      )
      .where((x) => x.group == "bts");
  print("res: $res");
}

class Person {
  final String name;
  final String group;

  Person({
    required this.name,
    required this.group,
  });

  @override
  // object의 함수 toString 덮어쓰기
  // Instance of 'Person' 이라고 출력되는 것 수정 위함
  String toString() {
    return "Person(name: $name, group: $group)";
  }
}
