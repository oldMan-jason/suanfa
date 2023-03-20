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

//二叉树
let tree = TreeObject()



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

//let nums4 = [-4,-1,0,3,10]
let nums4 = [-1,2,2]
let arr4 = LeetCodeSolution4().sortedSquares1(nums4)
print(arr4)

//轮转数组
//var nums5 = [1,2,3,4,5,6,7]
var nums5 = [-1,-100,3,99]
//var nums5 = [1,2]
//var nums5 = [1,2]
LeetCodeSolution5().rotate(&nums5, 2)

//移动零
var nums6 = [0,1,0,3,12]
LeetCodeSolution6().moveZeroes(&nums6)

//两数之和
//var nums7 = [2,7,11,15]
var nums7 = [-7,-2,11,14,15]
//var nums7 = [2,3,4]
//var nums7 = [-1,0]
let result = LeetCodeSolution7().twoSum(nums7, 9)
print(result)

//反转字符串
var charsData:[Character] = ["H","a","n","n","a","h"]
LeetCodeSolution8().reverseString(&charsData)

//反转字符串中的单词
var words = "Let's take LeetCode contest"
LeetCodeSolution9().reverseWords(words)

//链表中间结点
let head = SinglyListNode(1)
let second = SinglyListNode(2)
let third = SinglyListNode(3)
let fourth = SinglyListNode(4)
let five = SinglyListNode(5)
head.next = second
second.next = third
third.next = fourth
fourth.next = five
LeetCodeSolution10().middleNode(head)

//删除链表倒数第N个结点
let head11 = ListNode(val: 1)
let second11 = ListNode(val: 2)
let third11 = ListNode(val: 3)
let fourth11 = ListNode(val: 4)
let five11 = ListNode(val: 5)
head11.next = second11
second11.next = third11
third11.next = fourth11
fourth11.next = five11
LeetCodeSolution11().removeNthFromEnd2(head11, 2)

//无重复字符的最长子串长度
let str12 = "abcabcbb"
let length12 = LeetCodeSolution12().lengthOfLongestSubstring(str12)
print(length12)


