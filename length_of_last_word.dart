class Solution {
  int lengthOfLastWord(String s) {
    // One-liner
    // return s.trim().split(' ').last.length;

    // Traversing the string from the end
    int length = 0;
    for (int i = s.length - 1; i >= 0; i--) {
      if (s[i] == ' ' && length > 0) {
        return length;
      } else if (s[i] != ' ') {
        length++;
      }
    }
    return length;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.lengthOfLastWord("   fly me   to   the moon  "));
}
