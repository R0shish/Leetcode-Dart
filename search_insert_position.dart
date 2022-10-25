class Solution {
  int searchInsert(List<int> nums, int target) {
    if (nums.contains(target)) return nums.indexOf(target);
    int lower = 0;
    int upper = nums.length;

    while (lower < upper) {
      final mid = (lower + upper) ~/ 2;
      target > nums[mid] ? lower = mid + 1 : upper = mid;
    }

    return lower;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.searchInsert([1, 3, 5, 6], 0));
}
