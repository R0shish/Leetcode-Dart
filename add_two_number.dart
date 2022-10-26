// Definition for singly-linked list.
class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    ListNode result = ListNode(0);
    ListNode pointer = result;

    int carry = 0;

    while (l1 != null || l2 != null || carry != 0) {
      int val1 = l1?.val ?? 0;
      int val2 = l2?.val ?? 0;

      int sum = val1 + val2 + carry;
      carry = sum ~/ 10;

      pointer.next = ListNode(sum % 10);
      pointer = pointer.next!;

      l1 = l1?.next;
      l2 = l2?.next;
    }

    return result.next;
  }
}
