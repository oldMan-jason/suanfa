//
//  最大二叉树.swift
//  RothCodeCommand
//
//  Created by shaozejun on 2022/10/29.
/**
 给定一个不重复的整数数组 nums 。 最大二叉树 可以用下面的算法从 nums 递归地构建:

 创建一个根节点，其值为 nums 中的最大值。
 递归地在最大值 左边 的 子数组前缀上 构建左子树。
 递归地在最大值 右边 的 子数组后缀上 构建右子树。
 返回 nums 构建的 最大二叉树
 */

public class TreeNode {
     public var val: Int
     public var left: TreeNode?
     public var right: TreeNode?
     public init() { self.val = 0; self.left = nil; self.right = nil; }
     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
         self.val = val
         self.left = left
         self.right = right
     }
 }

import Foundation

class SolutionTree {
    
    func constructMaximumBinaryTree(_ nums: [Int]) -> TreeNode? {

        return findRoot(nums: nums, left: 0, right: nums.count)
        
    }
    
    func findRoot(nums:[Int],left:Int,right:Int) -> TreeNode? {
        
        if (left == right) {
            return nil
        }
        
        var maxIndex = left
        
        for i in left..<right {
            if (nums[i] > nums[maxIndex]) {
                maxIndex = i
            }
        }
        
        let nodel = TreeNode(nums[maxIndex])
        nodel.left = findRoot(nums: nums, left: left, right: maxIndex)
        nodel.right = findRoot(nums: nums, left: maxIndex + 1, right: right)
        
        return nodel
        
    }
    
    
}
