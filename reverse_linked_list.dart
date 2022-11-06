
// Definition for singly-linked list.
class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}


class Solution {

  ListNode? reverseList(ListNode? head) {
    ListNode? curr=head;
    ListNode? prev=null;

	while(curr!=null){
		ListNode? nextNode =curr.next;
		curr.next=prev;
		prev=curr;
		curr=nextNode;
	}

	return prev;
  }
}
