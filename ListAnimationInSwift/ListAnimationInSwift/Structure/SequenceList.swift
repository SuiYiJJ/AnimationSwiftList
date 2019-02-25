//
//  SequenceList.swift
//  ListAnimationInSwift
//
//  Created by 任俊峰 on 2019/2/23.
//  Copyright © 2019 任俊峰. All rights reserved.
//

import Foundation



class SequenceList {
    
    fileprivate var list: NSMutableArray
    fileprivate var count = 0
    fileprivate var capacity = 0
    
    //元素个数
    var length: Int {
        get {
            return count
        }
    }
    
    init(capacity: Int) {
        self.capacity = capacity
        self.list = NSMutableArray(capacity: capacity)
    }
    
    /**
     顺序输出
     */
    func displayList() {
        for i in 0..<count {
            print("\(i) -> \(list[i])")
        }
        print("\n")
    }
    
    /**
     往末尾追加元素
     
     - parameter item:
     */
    func addItem(_ item: Int) {
        list[count] = item;
        count += 1
    }
    
    /**
     根据下标索引元素
     
     - parameter index: 下标
     
     - returns: 该下标对应的值
     */
    func fetchItem(_ index: Int) -> String? {
        if !checkIndex(index) {
            return nil
        }
        
        return list[index] as? String
    }
    
    /**
     根据下标修改元素
     
     - parameter index:   下标
     - parameter newItem: 新的元素
     
     - returns: 之前的值
     */
    func modify(_ index: Int, newItem: String) -> String? {
        if !checkIndex(index) {
            return nil
        }
        
        let oldItem = list[index]
        list[index] = newItem
        return oldItem as? String
    }
    
    /**
     根据下标插入值
     
     - parameter item:  要插入的值
     - parameter index: 下标
     
     - returns: 返回插入结果，true or false
     */
    func insert(_ item: String, index: Int) -> Bool {
        if !checkIndex(index) {
            return false
        }
        
        var i = count
        while i > index {
            list[i] = list[i-1]
            i -= 1
        }
        list[index] = item;
        count += 1
        return true
    }
    
    /**
     根据下标移除元素
     
     - parameter index: 下标
     
     - returns: 是否移除成
     */
    func removeItme(_ index: Int) -> Bool {
        if !checkIndex(index) {
            return false
        }
        
        for i in index..<count-1 {
            list[i] = list[i+1]
        }
        
        count -= 1
        list.removeLastObject()
        
        return true
    }
    
    /**
     检查index是否合法
     
     - parameter index: 索引
     
     - returns: true合法，false不合法
     */
    func checkIndex(_ index: Int) -> Bool {
        if index < 0 || index > count  {
            print("index非法，请进行检查")
            return false
        }
        return true
    }
    
    //waiting……
}

