class Solution {
  String multiply(String num1, String num2) {
    if (num1 == '0' || num2 == '0') return '0';
    List<int> res = List.filled(num1.length + num2.length, 0, growable: true);

    for (int i = num1.length - 1; i >= 0; i--) {
      for (int j = num2.length - 1; j >= 0; j--) {
        res[i + j + 1] += (num1.codeUnitAt(i) - '0'.codeUnitAt(0)) *
            (num2.codeUnitAt(j) - '0'.codeUnitAt(0));
        res[i + j] += res[i + j + 1] ~/ 10;
        res[i + j + 1] %= 10;
      }
    }
    int i = 0;
    String ans = '';
    while (res[i] == 0) i++;
    while (i < res.length) ans += res[i++].toString();

    return ans;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.multiply('5', '10'));
}
