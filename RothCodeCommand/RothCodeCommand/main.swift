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
let array :[Int] = [1,4,6,12,19,80]
let find = FindClassObject()

/**
 插值查找
 */
let array1 :[Int] = [1,4,6,12,19,80]
let esixt = find.found(array: array1, obj: 6)
print(esixt)

/**二叉树**/
//构建树
let rootNode = Node(value: 45)
let left = Node(value: 24)
let right = Node(value: 53)
left.left = Node(value: 12)
left.right = Node(value: 37)
right.right = Node(value: 93)
rootNode.left = left
rootNode.right = right
//测试
//let exsit = find.find3(root: rootNode, obj: 37)
//print(exsit)


/**
 冒泡排序
 */
let paixu = PaixuClass()
//paixu.maopao()
//paixu.choice()
paixu.insertFun()

/**算法三季练习**/
let sortArr = SortArrayObject()
sortArr.sortValues2()

let color = ColourObject()
color.sortValue3()

let partSort = SortPartArrayObject()
partSort.sortPartArray()

/**
 算法面试
 */
//字符串反转
let iterfaceObject = InterfaceObject()
iterfaceObject.charRevers(str: "hello,word")

iterfaceObject.setupNodeListData()
iterfaceObject.arrTest()

var str: String = "adacdffegh"
iterfaceObject.findChar(str: str)



