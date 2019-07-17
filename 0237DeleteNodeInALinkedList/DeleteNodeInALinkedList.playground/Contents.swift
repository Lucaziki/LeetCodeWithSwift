import UIKit

class ListNode {
    var val: Int
    var next: ListNode?
    
    init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}


class Solution {
    
    /// Write a function to delete a node (except the tail) in a singly linked list, given only access to that node.
    
    /// Supposed the linked list is 1 -> 2 -> 3 -> 4 and you are given the third node with value 3, the linked list should become 1 -> 2 -> 4 after calling your function.
    ///
    /// - Parameter node: 需要删除的节点
    public func deleteNode(_ node: ListNode) {
        node.val = node.next!.val
        node.next = node.next!.next
    }
}
