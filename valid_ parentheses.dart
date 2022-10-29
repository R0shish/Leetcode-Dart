import 'dart:collection';

class Solution {
  bool isValid(String s) {
    final Map<String, String> parentheses = {
      '(': ')',
      '{': '}',
      '[': ']',
    };
    Queue<String> stack = Queue();

    for (int i = 0; i < s.length; i++) {
      if (parentheses.containsKey(s[i])) {
        stack.addFirst(parentheses[s[i]]!);
      } else if (stack.isNotEmpty && stack.first == s[i]) {
        stack.removeFirst();
      } else {
        return false;
      }
    }
    return stack.isEmpty;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.isValid("()[]{}"));
}
