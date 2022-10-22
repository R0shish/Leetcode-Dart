class Solution {
  bool isPerfectSquare(int num) {
    if (num <= 1) return true;

    int start = 0;
    int end = num ~/ 2;

    while (start < end) {
      int mid = (start + (end - start) ~/ 2) + 1;

      int div = num ~/ mid;
      int rem = num % mid;
      if (div == mid && rem == 0) return true;
      if (div == mid) return false;
      if (div > mid)
        start = mid;
      else
        end = mid - 1;
    }
    return false;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.isPerfectSquare(1));
}
