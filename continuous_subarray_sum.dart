import 'dart:collection';

class Solution {
  bool checkSubarraySum(List<int> nums, int k) {
    int len = nums.length;
    List<int> sum = List.filled(len + 1, 0);
    for (int i = 1; i <= len; i++) {
      sum[i] = sum[i - 1] + nums[i - 1];
    }

    Set<int> set = HashSet();

    for (int i = 2; i <= len; i++) {
      set.add(sum[i - 2] % k);
      if (set.contains(sum[i] % k)) return true;
    }
    return false;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.checkSubarraySum([23, 2, 4, 6, 7], 6));
}
