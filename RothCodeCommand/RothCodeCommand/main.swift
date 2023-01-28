//
//  main.swift
//  RothCodeCommand
//
//  Created by shaozejun on 2022/1/16.
//

import Foundation

//MARK: 算法第一季

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


//MARK: 算法第三季
let sortArr = SortArrayObject()
sortArr.sortValues2()

let color = ColourObject()
color.sortValue3()

let partSort = SortPartArrayObject()
let _ = partSort.sortPartArray()


//两个链表节点相加
let nodes1Valus = [2,4,3]
let nodes2Valus = [5,6,4]
let sub = SumNodesObject()
let firstNode = sub.setupNode(nodeArr: nodes1Valus)
let secondNode = sub.setupNode(nodeArr: nodes2Valus)
let h = sub.sumNodeData(firstNode: firstNode, lastNode: secondNode)
print(h)

//滑动窗口
let window = SolutionWindow()
let arr = [1,7,5,3,-3,-1,8,2]

//let arr1 = [9,11]
let _ = window.maxSlidingWindow(arr, 3)

//每日温度
let temper = SolutionTemperatures()
let temperatures = [73,74,75,71,69,72,76,73]
let temperatures1 = [30,40,50,60]
let temperatures2 = [30,60,90]
let _ = temper.dailyTemperatures(temperatures2)

//字符串轮转
let solutionFliped = SolutionFliped()
//let boolValue = solutionFliped.isFlipedString("waterbottle", "erbottlewat")
let boolValue = solutionFliped.isFlipedString("", "")
print(boolValue)

//MARK: 算法面试
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

/**
    二叉树
 **/
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

//字符串反转
let iterfaceObject = InterfaceObject()
iterfaceObject.charRevers(str: "hello,word")

let fi = iterfaceObject.setupNodeListData()
iterfaceObject.arrTest()
iterfaceObject.nodeListRevers(firstNode: fi)

var str: String = "adacdffegh"
iterfaceObject.findChar(str: str)

//MARK: 力扣算法

//let nums = [1,3,5,6]
let nums = [1,3,5,6]

let index = LeetCodeSolution3().searchInsert(nums, 7)
print(index)

