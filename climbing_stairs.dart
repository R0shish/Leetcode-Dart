class Solution {
  int climbStairs(int n) {
    int first = 1;
    int second = 1;

    for (int i = n - 2; i >= 0; i--) {
      int temp = second;
      second = first + second;
      first = temp;
    }
    return second;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.climbStairs(3));
}
