class Solution {
  List<String> letterCombinations(String digits) {
    if (digits.length == 0) return [];
    List<String> res = [];
    final Map<String, List<String>> map = {
      '2': ['a', 'b', 'c'],
      '3': ['d', 'e', 'f'],
      '4': ['g', 'h', 'i'],
      '5': ['j', 'k', 'l'],
      '6': ['m', 'n', 'o'],
      '7': ['p', 'q', 'r', 's'],
      '8': ['t', 'u', 'v'],
      '9': ['w', 'x', 'y', 'z']
    };
    res.add('');
    for (int i = 0; i < digits.length; i++) {
      List<String> temp = [];
      List<String> character = map[digits[i]]!;
      for (int c = 0; c < character.length; c++) {
        for (int j = 0; j < res.length; j++) {
          temp.add(res[j] + character[c]);
        }
      }
      res = temp;
    }
    return res;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.letterCombinations('23'));
}
