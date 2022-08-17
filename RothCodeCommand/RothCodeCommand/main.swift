//
//  main.swift
//  RothCodeCommand
//
//  Created by shaozejun on 2022/1/16.
//

import Foundation

print("Hello, World!")

/**
    复杂度
    求 斐波那契数的第n项值
 **/

let fibValue = 4
Complexity.complexity(fib: fibValue)

/**
    动态数组
 **/

let danamicArr = DynamicArray()

/**
    判断有效括号 例如： {([])} 有效； {]()} 无效
 */

//let text = "{[}]"
//let text = "[{()}]"
let text = "([)]{}"
let stack = StackObject();
let isValid = stack.isValid(text: text)
print(isValid ? "有效":"无效")


/**
    二分查找
 */
let array :[Int] = [1,4,12,6,2,19,80]
let find = FindClassObject()
let isExsit = find.findValue(arr: array, arguments: 4)
print(isExsit)

/**算法三季练习**/
//let sortArr = SortArrayObject()
//sortArr.sortValues2()
//
//let color = ColourObject()
//color.sortValue3()

let partSort = SortPartArrayObject()
partSort.sortPartArray()

