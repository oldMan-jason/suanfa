//
//  Interface.swift
//  RothCodeCommand
//
//  Created by shaozejun on 2022/10/21.
//

import Foundation


class InterfaceObject: NSObject {
    
    var array1: [Int] = [1,5,8,10]
    var array2: [Int] = [3,5,7,11,14,18,21]
    
    var arrhash: [Int] = Array(repeating: 0, count: 256)
    
    func arrTest() -> Void {
        arrayMerge(arr1: array1, arr2: array2)
    }
    
}


//hash算法，在一个字符串中，找出第一个只出现一次的字符abcdacdffegh 结果为b
//通过hash算法，根据每一个字符对应的asc码值作为数据的下标索引，索引对应的值叠加来计算字符出现的次数
extension InterfaceObject {
    
    func findChar(str: String) -> Character? {
        
        for c in str {
            //字符对应的code码作为索引
            guard let code = c.asciiValue else { break  }
            arrhash[Int(code)] += 1
        }
        
        var index = 0
        var c: Character?
        for v in arrhash {
            if v == 1 {
               guard let e = UnicodeScalar(index) else {
                   continue
               }
                //code码转化为字符
                c = Character(e)
                break
            }
            index += 1
        }
        
        return c
    }
    
}

//有序数组的合并
extension InterfaceObject {
    
    func arrayMerge(arr1:[Int],arr2:[Int]) -> [Int] {
        
        var arr1_index = 0
        var arr2_index = 0
        var emptyArray = [Int]()
        
        while arr1_index < arr1.count && arr2_index < arr2.count {
        
            let arr1_value = arr1[arr1_index]
            let arr2_value = arr2[arr2_index]
            
            if arr1_value < arr2_value {
                emptyArray.append(arr1_value)
                arr1_index += 1
            }else{
                emptyArray.append(arr2_value)
                arr2_index += 1
            }
        }
        
        while (arr1_index < arr1.count)  {
            let arr1_value = arr1[arr1_index]
            emptyArray.append(arr1_value)
            arr1_index += 1
        }
        
        while (arr2_index < arr2.count)  {
            let arr2_value = arr2[arr2_index]
            emptyArray.append(arr2_value)
            arr2_index += 1
        }
        
        return emptyArray
        
        
    }
    
}

extension InterfaceObject {
    
    //字符串的反转
    func charRevers(str: String) -> Void {
        
        var charsArray = Array(str)
        
        var begin = 0,end = charsArray.count - 1
        
        while (begin < end){
            
            let temp_begain = charsArray[begin]
            let temp_end = charsArray[end]
            
            charsArray[begin] = temp_end
            charsArray[end] = temp_begain
            
            begin += 1
            end -= 1
        }
        
        let value = String(charsArray)
        print(value)
    }
    
}

/**无重复字符的最长子串*/
extension InterfaceObject {
    
    /**通过两个指针来进行遍历，右指针负责单个字符遍历，判断当前的字符是否在集合中，如果不在就添加进去，更新长度值，右指针++，否则，左
     指针右移动，删除集合中左指针对应的字符，左指针++，长度记录值--。直到右指针对应的字符在集合中没有为止。
     
     adacdffegh
     **/
    func findLength(str: String) -> Int {
        
        var left = 0
        var right = 0
        var length = 0
        var maxLength = 0
        
        var set: [Character] = [Character]()
        //将字符串转成数组
        let chars = Array(str)
        
        while (right < chars.count) {
            
            if (!set.contains(chars[right])) {
                set.append(chars[right])
                right += 1
                length += 1
                maxLength = max(length, maxLength)
                
            }else{
                
                while set.contains(chars[right]) {
                    set.remove(at: left)
                    left += 1
                    length -= 1
                }
                
                set.append(chars[right])
                right += 1
            }
        }
        
        return maxLength
    }
}

extension InterfaceObject {
    
    //链表反转
    func nodeListRevers(firstNode: ListNodeModel?) -> Void {
        
        var point = firstNode
        var newHead: ListNodeModel?
            
        while point != nil {
            
            let temp = point?.nextNode
            
            point?.nextNode = newHead
            
            newHead = point
            
            point = temp
        }
        
    }
    
    //构造链表数据
    func setupNodeListData() -> ListNodeModel? {
        
        var firstHead: ListNodeModel?
        var last: ListNodeModel?
        
        for i in 0..<5 {
            
            let node = ListNodeModel(data: i)
            
            if firstHead == nil {
                firstHead = node;
                
            }else{
                last?.nextNode = node
            }
            last = node
        }
        
        return firstHead
    }
    
    //打印链表数据
    func printNodeList(head:ListNodeModel) -> Void {
        
        while head.nextNode != nil {
            print(head.data)
        }
    }
}



/**单个链表类**/
class ListNodeModel {
    
    var data: Int = 0
    var nextNode: ListNodeModel?
    
    init(data: Int) {
        self.data = data
    }
    
}


/**爬楼梯,有点类似菲波拉契数**/
extension InterfaceObject {
    
    func climbStairs(step: Int) -> Int {
        
        if step == 1 || step == 0 {
            return 1
        }
        return climbStairs(step: step - 1) +  climbStairs(step: step - 2)
    }
    
}


