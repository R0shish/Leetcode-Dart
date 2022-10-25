class Solution {
  bool arrayStringsAreEqual(List<String> word1, List<String> word2) {
    return word1.join() == word2.join();
  }
}

void main() {
  Solution sol = Solution();
  print(sol.arrayStringsAreEqual(['ab', 'c'], ['a', 'bc']));
}
