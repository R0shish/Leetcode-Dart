class Solution {
  int romanToInt(String s) {
    Map<String, int> roman = {
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000
    };
    int res = 0;
    for (int i = 0; i < s.length; i++) {
      if (i < s.length - 1 && roman[s[i]]! < roman[s[i + 1]]!) {
        res -= roman[s[i]]!;
      } else {
        res += roman[s[i]]!;
      }
    }
    return res;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.romanToInt('MCMXCIV'));
}
