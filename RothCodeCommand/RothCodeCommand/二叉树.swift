//
//  二叉树.swift
//  RothCodeCommand
//
//  Created by shaozejun on 2022/11/10.
/**
 基本概念
 1. 兄弟节点： 有相同的父节点
 2. 节点的度: 就是一个节点下子节点的个数
 3. 树的度：所有节点度中的最大值
 4. 节点深度：从根节点到当前节点的节点总数
 5. 节点的高度： 从当前节点到距离该节点最远叶子结点的节点总数
 6. 树的深度== 树的高度
 
　 根节点：树的最顶层节点，没有父节点的节点。如图4-7中的节点A。
　子树：除了跟节点外，子节点不为空的节点组成的树为子树，如图4-7中的B、C、D、E。
　叶节点：没有任何子节点的节点，如图4-7中的G、H、I、J。
　路径：从根节点到指定节点组成的节点链，如图4-7中节点G的路径为A→B→D→G。
　祖先节点：一个指定节点路径上除该节点外的任意节点，如节点G的祖先节点为A、B、D。
　度：节点的子节点数量，如节点D的度数为3、节点E的度数为1、叶节点的度数都为0。”
 */

import Foundation

//定义一个节点对象
class MyTreeNode<T> {
    var left: MyTreeNode?
    var right: MyTreeNode?
    var value: T
    init(value: T){
        self.value = value
    }
}

class TreeObject {
    
    
    init() {
        //构造二叉树
        let root = MyTreeNode<String>(value: "A")
        let left = MyTreeNode<String>(value: "B")
        let right = MyTreeNode<String>(value: "E")
        left.left = MyTreeNode<String>(value: "C")
        left.right = MyTreeNode<String>(value: "D")
        right.right = MyTreeNode<String>(value: "F")
        
        root.left = left
        root.right = right
        
//        enumTree1(node: root)
        enumTree2(node: root)
        
        let rootNode = makeTree(nodeValArray: [7,12,4,8,5,23,41,3])
        print(rootNode)
        
    }
    
//MARK: 二叉树遍历
    /**
     “二叉树的遍历操作无论是前序遍历、中序遍历还是后续遍历都比较简单。只需要记住前序遍历为“根左右”、中序遍历为“左根右”、后序遍历为“左右根”即可”
     */
    //二叉树的遍历： 前序遍历 遍历将依次访问到元素A→B→C→D→E→F”
    func enumTree1(node: MyTreeNode<String>) -> Void {
        print(node.value)
        if let left = node.left {
            enumTree1(node: left)
        }
        
        if let right = node.right {
            enumTree1(node: right)
        }
    }
    
    //二叉树的遍历： 中序遍历 “中序遍历后的结果为C→B→D→A→E→F”
    func enumTree2(node: MyTreeNode<String>) -> Void {
        
        if let left = node.left {
            enumTree2(node: left)
        }
        print(node.value)
        if let right = node.right {
            enumTree2(node: right)
        }
    }
    
    //二叉树的遍历：后序遍历的结果为C→D→B→F→E→A”
    func enumTree3(node: MyTreeNode<String>) -> Void {
        
        if let left = node.left {
            enumTree2(node: left)
        }
        
        if let right = node.right {
            enumTree2(node: right)
        }
        
        print(node.value)
    }
    
    
//MARK: 二叉查找树构造
    /**
        首先二叉查找树也是二叉树，除了二叉树基本的特性之外，还有如下特点：
       　左子树中所有节点的值小于根的值。
       　右子树中所有节点的值大于根的值。
       　左右子树也分别是二叉查找树。”
     */
    func makeTree(nodeValArray:[Int]) -> MyTreeNode<Int>? {
        
        if nodeValArray.isEmpty {
            return nil
        }
        
        //随机获取一个值作为根节点
        let root = MyTreeNode<Int>(value: nodeValArray[0])
        
        //遍历数组，按照二叉树特点组装树结构
        for index in 1..<nodeValArray.count {
            inserNode(node: root, value: nodeValArray[index])
        }
        return root
    }
    
//MARK: 二叉树删除节点
    /**
     “如果要删除的节点为叶节点，则删除逻辑很简单，直接将此节点移除即可。
      如果要删除的节点只有左子树，则将此节点删除后，将左子树代替它与其父节点相连即可。
      如果要删除的节点只有右子树，则将此节点删除后，将其右子树代替它与其父节点相连即可。
      如果要删除的节点既有左子树也有右子树，就需要选择左子树中的最大值或者右子树中的最小值代替要删除的节点与其父节点连接。
     */
    
    func deleteNode(node: MyTreeNode<Int>,value: Int) -> MyTreeNode<Int>? {
        
            if node.value == value {
                if node.left == nil && node.right == nil{
                    return nil
                }
                if node.left == nil && node.right != nil {
                    return node.left
                }
                if node.left != nil && node.right == nil {
                    return node.right
                }
                
                if let l = node.left,let _ = node.right {
                    //取左节点最大值
                    var max = l
                    while let m = max.right {
                        max = m
                    }
                    //删除取出的最大值
                    let res = deleteNode(node: node, value: max.value)
                    max.left = res?.left
                    max.right = res?.right
                    return max
                }
            }
        
            if node.value > value {
                if let l = node.left {
                    node.left = deleteNode(node: l, value: value)
                }
            }
            
            if node.value < value {
                if let r = node.right {
                    node.right = deleteNode(node: r, value: value)
                }
            }
            
        return node
    }
    
}

extension TreeObject {
    
    func inserNode(node: MyTreeNode<Int>?,value: Int) -> Void {
        
        if (node?.value)! > value {
            if let left = node?.left {
                inserNode(node: left, value: value)
            }else{
                node?.left = MyTreeNode<Int>(value: value)
            }
        }
        
        if (node?.value)! < value {
            if let right = node?.right {
                inserNode(node: right, value: value)
            }else{
                node?.right = MyTreeNode<Int>(value: value)
            }
        }
    }
}

