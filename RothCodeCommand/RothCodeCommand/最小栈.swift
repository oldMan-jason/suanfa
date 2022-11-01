//
//  最小栈.swift
//  RothCodeCommand
//
//  Created by shaozejun on 2022/10/29.
//

import Foundation

class MinStack {

    //正常push的栈
    lazy var stack: [Int] = [Int]()
    //存放最小值的栈
    lazy var minStack = [Int]()
    
    init() {

    }
    
    func push(_ val: Int) {
        
        self.stack.append(val)
        
        if(self.minStack.count > 0){
            
            let topVal = self.minStack.first!
            if (topVal <= val) {
                self.minStack.append(topVal)
            }else{
                self.minStack.append(val)
            }

        }else{
            self.minStack.append(val)
        }
    }
    
    //stack 和 minstack都是一一对应，minStack表示push进去的最小值
    func pop() {
        
        if self.stack.count > 0 {
            self.stack.removeLast()
        }
        
        if(self.minStack.count > 0){
            self.minStack.removeLast()
        }
    }
    
    func top() -> Int {
        return self.stack.first ?? 0
    }
    
    func getMin() -> Int {
        return self.minStack.first ?? 0
    }
}
