class Solution {
  String countAndSay(int n) {
    String res = '1';
    for (int i = 1; i < n; i++) {
      res = returnString(BigInt.parse(res));
    }
    return res;
  }

  String returnString(BigInt n) {
    final String str = n.toString();
    int count = 1;
    String res = '';
    for (int i = 0; i < str.length - 1; i++) {
      if (str[i] == str[i + 1]) {
        count++;
        continue;
      }
      res += '$count${str[i]}';
      count = 1;
    }
    res += '$count${str[str.length - 1]}';
    return res;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.countAndSay(11));
}
