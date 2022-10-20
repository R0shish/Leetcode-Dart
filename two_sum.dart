class Solution {
  List<int> twoSum(List<int> nums, int target) {
    final Map<int, int> map = {};
    for (int i = 0; i < nums.length; i++, map[nums[i]] = i) {
      final int diff = target - nums[i];
      if (map.containsKey(diff)) {
        return [map[diff]!, i];
      }
    }
    return [];
  }
}

void main() {
  Solution sol = Solution();
  print(sol.twoSum([2, 1, 3, 4], 4));
}
