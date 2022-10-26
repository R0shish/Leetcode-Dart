class Solution {
  String reverseWords(String s) {
    return s
        .trim() // Trim left and right whitespaces
        .replaceAll(
            RegExp('\\s+'), ' ') // Replace multiple spaces with a single space
        .split(' ') // Split all the words using ' '
        .reversed // Reverse the order of the words
        .toList() // Create a list using the reverse order of words
        .join(' '); // Join the reversed words using a space
  }
}

void main() {
  Solution sol = Solution();
  print(sol.reverseWords("a good   example"));
}
