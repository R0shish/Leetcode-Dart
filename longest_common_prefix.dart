class Solution {
  String longestCommonPrefix(List<String> strs) {
    String res = '';
    if (strs.isEmpty) return '';
    strs.sort();
    String firstWord = strs[0];
    String lastWord = strs[strs.length - 1];
    for (int i = 0; i < firstWord.length; i++) {
      if (firstWord[i] == lastWord[i]) {
        res += firstWord[i];
      } else {
        break;
      }
    }
    return res;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.longestCommonPrefix(["flower", "flow", "flight"]));
}
