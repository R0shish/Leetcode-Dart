class Solution {
  List<int> searchRange(List<int> nums, int target) {
    return [nums.indexOf(target), nums.lastIndexOf(target)];
  }
}

void main() {
  Solution sol = Solution();
  print(sol.searchRange([5, 7, 7, 8, 8, 10], 8));
}
