//
//  移除链表元素.swift
//  RothCodeCommand
//
//  Created by shaozejun on 2022/8/18.



/**
    删除链表中等于给定值val的所有节点
    链表： 2>4>6>12>4>null
    需要删除的节点值为4
    思路：重新创建一个链表，需要三个指针
    一个新链表的 head ，新链表的尾部节点tail，遍历指针
    
 */

import Foundation

/**
    每一个节点对象
 */
class ListNode {
    var val: Int = 0
    var next: ListNode?
    init(val:Int){
        self.val = val;
    }
}

class LinkedObject {
    
    func deleteLinked(head: ListNode?,val: Int) -> ListNode? {
        
        var newHead: ListNode?
        var newTail: ListNode?
        
        if head == nil {return nil}
        
        var headEnum = head;
        
        while headEnum?.next != nil {
            
            if headEnum?.val != val {
                
                if newHead == nil {
                    newHead = head
                    newTail = head
                }else{
                    newTail?.next = headEnum
                    newTail = headEnum;
                }
            }
            
            headEnum = headEnum?.next
            
        }
        
        if newTail == nil {
            return nil
        }else{
            //尾结点next清空
            newTail?.next = nil;
        }
        return newHead
        
    }
    
    
    func removeElement(head: ListNode?,val: Int) -> ListNode? {
        
        if head == nil {
            return nil
        }
        var tmpHead: ListNode? = head
        //虚拟头结点
        let newHead = ListNode(val: 0)
        var newTail = newHead
        while tmpHead != nil {
            if tmpHead?.val != val {
                newTail.next = tmpHead;
                newTail = tmpHead!
            }
            tmpHead = tmpHead?.next
            
        }
        newTail.next = nil;
        
        return newHead.next
        
    }
    
    
}



