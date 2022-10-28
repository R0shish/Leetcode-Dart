class Solution {
  List<List<String>> groupAnagrams(List<String> strs) {
    Map<String, List<String>> map = {};
    for (String str in strs) {
      final List<String> char = str.split('');
      char.sort();
      String sortedString = char.join();
      map.putIfAbsent(sortedString, () => []);
      map[sortedString]!.add(str);
    }
    return map.values.toList();
  }
}

void main() {
  Solution sol = Solution();
  print(sol.groupAnagrams(["eat", "tea", "tan", "ate", "nat", "bat"]));
}
