class Solution {
  bool isPalindrome(String s) {
    s = s.toLowerCase().replaceAll(RegExp("[^a-zA-Z0-9]"), "");
    int left = 0, right = s.length - 1;

    while (left < right) {
      if (s[left] != s[right]) return false;

      left++;
      right--;
    }

    return true;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.isPalindrome("A man, a plan, a canal: Panama"));
}
