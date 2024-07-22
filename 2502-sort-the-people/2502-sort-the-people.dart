class Solution {
  List<String> sortPeople(List<String> names, List<int> heights) {
  List<Map<String, dynamic>> people = [];

  for (int i = 0; i < names.length; i++) {
    people.add({"name": names[i], "height": heights[i]});
  }

  people.sort((a, b) => b["height"]!.compareTo(a["height"]!));

  return people.map<String>((person) => person["name"]!).toList();
}
}