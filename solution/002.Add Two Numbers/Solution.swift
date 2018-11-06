/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */
 
class Solution {
    
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
 
        let headListNode:ListNode? = ListNode(0)
        var currListNode = headListNode

        var listNode1 = l1
        var listNode2 = l2

        var carryValue:Int = 0

        while true {

            var listNode1Value:Int = 0
            var listNode2Value:Int = 0

            if let listNode = listNode1 {
                listNode1Value = listNode.val
                listNode1 = listNode.next
            }

            if let listNode = listNode2 {
                listNode2Value = listNode.val
                listNode2 = listNode.next
            }

            let temporaryValue: Int = listNode1Value + listNode2Value + carryValue

            carryValue = temporaryValue % 100 / 10
            currListNode?.val = temporaryValue % 10

            if listNode1 == nil && listNode2 == nil && carryValue == 0 {
                currListNode?.next = nil
                break
            } else {
                currListNode?.next = ListNode(0)
                currListNode = currListNode?.next
            }

        }
        return headListNode
    }
}
