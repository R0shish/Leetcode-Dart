class Solution {
  List<int> runningSum(List<int> nums) {
    for (int i = 1; i < nums.length; i++) {
      nums[i] += nums[i - 1];
    }
    return nums;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.runningSum([1, 2, 3, 4, 5]));
}
