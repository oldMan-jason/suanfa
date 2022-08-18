//
//  有序数组合并.swift
//  RothCodeCommand
//
//  Created by shaozejun on 2022/8/17.
//


/** 给定两个有序数组 nums1，nums2
    将nums2 合并到nums1中，使得nums1成为一个有序数组
    例如： let nums1 = [1,32,2,4,0,0,0,0]
          let nums2 = [30,12,61,90]
 
    思路：使用3个索引，两个索引分别对nums1和nums2从右开始遍历，一个索引记录nums1被补充的数据
    ，如果从左开始遍历，数据会被覆盖
**/


import Foundation

class SortArrayObject {
    
    var m = 3
    var n = 3
    var nums1 = [1,3,5,0,0,0]
    let nums2 = [2,4,6]
    
//    var m = 1
//    var n = 3
//    var nums1 = [1,0,0,0]
//    let nums2 = [2,4,6]
    
    //系统实现
    func sortValues() -> Void {
        
        let nums3 = nums1 + nums2
        let nums4 = nums3.sorted { value1, value2 in
            return value1 < value2
        }
        print(nums4)
        
    }
    
    //算法实现
    func sortValues2() {
        
        var nums1Index = m - 1
        var nums2Index = n - 1;
        var curIndex = nums1.count - 1;
    
        while nums2Index >= 0 {
            
            if nums1Index >= 0 && nums2[nums2Index] < nums1[nums1Index] {
                nums1[curIndex] = nums1[nums1Index];
                curIndex -= 1
                nums1Index -= 1
            }else{
                nums1[curIndex] = nums2[nums2Index];
                curIndex -= 1
                nums2Index -= 1
            }
        }
        
        print(nums1)
    }
    
}
