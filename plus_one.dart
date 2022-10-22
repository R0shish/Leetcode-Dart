class Solution {
  List<int> plusOne(List<int> digits) {
    int n = digits.length - 1;
    for (int i = n; i >= 0; i--) {
      if (digits[i] == 9) {
        digits[i] = 0;
      } else {
        digits[i]++;
        return digits;
      }
    }
    List<int> newDigits = [1];
    newDigits.addAll(digits);
    return newDigits;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.plusOne([9, 9, 9, 9, 9]));
}
