//
//  回文链表.swift
//  RothCodeCommand
//
//  Created by shaozejun on 2022/10/28.
//

import Foundation

class Solution {
    
   func isPalindrome(_ head: ListNode?) -> Bool {
       
       if(head == nil || head?.next == nil) {return true}
       
       if (head?.next?.next == nil) {return head?.val == head?.next?.val}
       //找到中间节点
       let mideNode = self.findMid(head: head)
       //反转链表
       var rhead = self.revers(head: mideNode?.next)
       
       var lhead = head
       
       while rhead?.next != nil {
           
           if(rhead?.val != lhead?.val) {
               return false
           }
           rhead = rhead?.next
           lhead = lhead?.next
       }
       
       return true
       
   }
    
    /**找到中间节点**/
    func findMid(head: ListNode?) -> ListNode? {
         
        if(head == nil) {
            return nil
        }
        
        var fastNode = head
        var slowNode = head
        while (fastNode?.next != nil && fastNode?.next?.next != nil) {
            slowNode = fastNode?.next
            fastNode = fastNode?.next?.next
        }
        return slowNode
    }
    
    //链表反转
    func revers(head:ListNode?) -> ListNode? {
        
        var cur: ListNode? = head
        var last: ListNode?
        
        while cur?.next != nil {
            
            let tmpNode = cur?.next
            cur?.next = last
            last = cur
            cur = tmpNode
            
        }
        return cur
    }
    
    

   
}
