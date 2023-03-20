//
//  10链表的中间结点.swift
//  RothCodeCommand
//
//  Created by shaozejun on 2023/2/1.
/**
 给定一个头结点为 head 的非空单链表，返回链表的中间结点。

 如果有两个中间结点，则返回第二个中间结点。
 输入：[1,2,3,4,5]
 输出：此列表中的结点 3 (序列化形式：[3,4,5])
 
 输入：[1,2,3,4,5,6]
 输出：此列表中的结点 4 (序列化形式：[4,5,6])
 
 
 思路： 使用快慢指针的查询方式
 */

import Foundation

/**单链表结点对象**/
public class SinglyListNode {
     public var val: Int
     public var next: SinglyListNode?
     public init() { self.val = 0; self.next = nil; }
     public init(_ val: Int) { self.val = val; self.next = nil; }
     public init(_ val: Int, _ next: SinglyListNode?) { self.val = val; self.next = next; }
 }

class LeetCodeSolution10 {
    
    func middleNode(_ head: SinglyListNode?) -> SinglyListNode? {
        
        var slowHeader = head
        var fastHeader = head
        while fastHeader?.next != nil {
            slowHeader = slowHeader?.next
            fastHeader = fastHeader?.next?.next
        }
        return slowHeader
    }
    
}
