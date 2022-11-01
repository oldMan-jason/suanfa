//
//  滑动窗口最大值.swift
//  RothCodeCommand
//
//  Created by shaozejun on 2022/10/29.

/**
 给定一个数组nums，在一个大小为k的滑动窗口从数组的最左侧移动到最右侧，你只可以看到在滑动窗口内的k个数字
 ，滑动窗口每次只向右移动一位，返回滑动窗口中的最大值
 
 例如；[1,-2,-4,4,8,2,18,5]，数组长度为8，k = 3,则滑动次数 = 8 - （3 - 1）
 滑动窗口移动的次数： 数组的总长度 - (滑动窗口范围数 - 1)
 
 采用双端队列方式，
 w指针： 窗口第一个值
 i指针：窗口最后一个值
 双端队列：存放值的索引
 1.如果num[i] >= 队列尾部的值（nums[队尾index]），不断删除队列尾部的值，直到队尾的值 > num[i] 为止，保证队列的值一直是减小的；
 2. 将i加入的队尾
 3. 检验队列的队头索引在不在滑动窗口的范围内，如果队头的索引<w的值,则删除队头的索引
 4. 设置滑动窗口的最大值为队头
 
 
 
 
 
 
 */

import Foundation


class SolutionWindow {

    //滑动窗口长度
    var windowLength = 0
    //记录滑动窗口尾部索引值的集合
    lazy var winowIndex = [Int]()
    //遍历一次比较的最大值集合
    lazy var maxvalue = [Int]()
    
    //遍历索引
    var start = 0
    var end = 0
    /**
     - 0 : 1
     - 1 : 7
     - 2 : 5
     - 3 : 3
     - 4 : -3
     - 5 : -1
     - 6 : 8
     - 7 : 2
     */
    
    func maxSlidingWindow(_ nums: [Int], _ k: Int) -> [Int] {
        
        windowLength = k
        start = -(windowLength - 1)
        
        if(nums.isEmpty || k < 1) {
            return []
        }
        
        if (k == 1) {
            return nums
        }
        
        while end <= nums.count - 1 {
            
            let value = nums[end]
            print("end-- \(end) value -- \(value)")
            
            if (winowIndex.isEmpty) {
                //添加索引
                winowIndex.append(end)
                
                print("window -- \(winowIndex)");
            }else{
                //反向遍历，队尾值比较
                for (index,element) in winowIndex.reversed().enumerated() {
                    print(index,element)
                    print("值 -- \(nums[element])")
                    
                    if(nums[element] <= value) {
                        winowIndex.removeLast()
                    }
                }
                
                winowIndex.append(end)
                
                print("window -- \(winowIndex)");
                
            }
            
            print("start--\(start) end -- \(end)")
            
            if(start >= 0) {
             
                if (winowIndex.first! < start) {
                    winowIndex.remove(at: 0)
                }
                maxvalue.append(nums[winowIndex.first!])
            }
            print("maxvalue --\(maxvalue)")
            end += 1
            start += 1
            
        }
        
        return maxvalue
    }
}

