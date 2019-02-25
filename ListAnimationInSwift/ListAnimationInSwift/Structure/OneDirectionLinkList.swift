//
//  singleLinearList.swift
//  ListAnimationInSwift
//
//  Created by 任俊峰 on 2019/2/23.
//  Copyright © 2019 任俊峰. All rights reserved.
//

import Foundation

/// 单向链表的节点
class OneDirectionLinkListNode {
    var data: AnyObject
    var next: OneDirectionLinkListNode?
    
    init(data: AnyObject = "" as AnyObject) {
        self.data = data
    }
//
//    deinit{
//        print("\(self.data)释放", separator: "", terminator: ",")
//    }
}

class OneDirectionLinkList {
    
    
    
    var headNode: OneDirectionLinkListNode?
    var tailNode: OneDirectionLinkListNode?
    var length: UInt
    
    init() {
        self.headNode = OneDirectionLinkListNode()
        self.tailNode = self.headNode
        self.length = 0
    }
    
    func count() -> UInt {
        return length
    }
    
    // MARK: - 链表的创建
    /**
     根据数组正向创建链表
     
     - parameter items: 数组
     
     - returns: true-创建成功， false-创建失败
     */
    func forwardDirectionCreateList(items: Array<AnyObject>) -> Bool {
        for item in items {
            if !self.addItemToTail(item: item) {
                return false
            }
        }
        return true
    }
    
    // MARK: - 链表元素的增加
    /**
     往链表前方追加元素
     
     - parameter item: 所追加的元素
     
     - returns: true-追加成功，false-追加失败
     */
    func addItemToTail(item: AnyObject) -> Bool {
        let newLinkListNode = OneDirectionLinkListNode(data: item)
        if self.tailNode == nil {
            return false
        }
        self.tailNode?.next = newLinkListNode
        self.tailNode = newLinkListNode
        self.length += 1
        return true
    }
    
    /**
     
     根据数组逆向创建数组
     - parameter items: 数组
     
     - returns: true-创建成功， false-创建失败
     */
    func reverseDirectionCreateList(items: Array<AnyObject>) -> Bool {
        for item in items {
            if !self.addItemToHead(item: item as! AnyObject) {
                return false
            }
        }
        return true
    }
    
    
    
    /**
     往链表后方追加元素
     
     - parameter item: 所追加的元素
     
     - returns: true-追加成功，false-追加失败
     */
    func addItemToHead(item: AnyObject) -> Bool {
        let newLinkListNode = OneDirectionLinkListNode(data: item)
        if self.headNode == nil {
            return false
        }
        newLinkListNode.next = headNode?.next
        self.headNode?.next = newLinkListNode
        self.length += 1
        if length == 1 {
            self.tailNode = newLinkListNode;
        }
        return true
    }
    
    /**
     根据指定索引来插入item
     
     - parameter item:  插入链表中的元素
     - parameter index: 要插入的位置（0-length）
     
     - returns: true-插入成功，false-插入失败
     */
    func insertItem(item: AnyObject, index: UInt) -> Bool {
        if !checkIndex(index: index) {
            return false
        }
        
        if index == 0 {
            return self.addItemToHead(item: item)
        }
        
        if index == self.length {
            return self.addItemToTail(item: item)
        }
        
        var cursor = self.headNode
        for _ in 0..<index {
            cursor = cursor?.next
        }
        
        let newItme = OneDirectionLinkListNode(data: item)
        newItme.next = cursor?.next
        cursor?.next = newItme
        self.length += 1
        
        return true
    }
    
    
    //MARK: - 链表元素的移除
    /**
     正向移除链表中所有的数据
     */
    func removeAllItemFromHead() {
        while self.removeFirstNode() != nil {}
    }
    
    /**
     逆向移除链表中所有的数据
     */
    func removeAllItemFromLast() {
        while self.removeLastNode() != nil {}
    }
    
    
    /**
     移除第一个元素
     
     - returns: 移除成功就返回节点数据，如果移除失败则返回nil
     */
    func removeFirstNode() -> AnyObject? {
        if self.headNode?.next == nil {
            print("链表为空")
            return nil                    //链表为空
        }
        
        let removeItem = self.headNode?.next
        self.headNode?.next = removeItem?.next
        removeItem?.next = nil
        self.length -= 1
        
        if self.headNode?.next == nil {     //如果移除的是最后一个元素，就讲尾指针指向头指针
            self.tailNode = self.headNode
        }
        return removeItem?.data
    }
    
    /**
     移除最后一个节点
     
     - returns: 被移除的节点值
     */
    func removeLastNode() -> AnyObject? {
        if self.headNode?.next == nil {
            print("链表为空")
            return nil                    //链表为空
        }
        
        return self.removeItem(index: self.length - 1)
    }
    
    /**
     根据索引移除节点
     
     - parameter index: 索引
     
     - returns: 被移除的节点值
     */
    func removeItem(index: UInt) -> AnyObject? {
        if self.headNode?.next == nil {
            print("链表为空")
            return nil                    //链表为空
        }
        
        if !self.checkIndex(index: index) {
            return nil
        }
        
        var cursor = self.headNode      //遍历节点的游标
        var preCursor = self.headNode   //记录一下cursor前面的节点
        
        for i in 0..<self.length {      //寻找移除的节点的位置，以及前驱
            preCursor = cursor
            cursor = cursor?.next
            if index == i {
                break
            }
        }
        
        //对节点进行移除
        preCursor?.next = cursor?.next
        cursor?.next = nil
        if index == self.length-1 {
            self.tailNode = preCursor
        }
        self.length -= 1;
        
        return cursor?.data;
    }
    
    
    
    //MARK: 链表的遍历
    /**
     单向链表的遍历
     */
    func display() {
        var currentNode = self.headNode?.next
        for _ in 0..<self.length {
            if currentNode == nil {
                break
            }
            guard let item = currentNode?.data else {
                return
            }
            print(item, separator: "", terminator: " -> ")
            currentNode = currentNode?.next
        }
        print("nil")
    }
    
    
    
    
    
    
    //链表的搜索
    func getNode(atIndex index:Int) -> AnyObject? {
        if index >= 0 {
            var node = headNode
            var i = index
            while node != nil {
                if i == 0 {
                    return node?.data
                }
                i -= 1
                node = node?.next
            }
        }
        return nil
    }
    
    
    
    
    
    
    // MARK: - 数据验证
    /**
     检查index是否合法
     
     - parameter index: 索引
     
     - returns: true合法，false不合法
     */
    func checkIndex(index: UInt) -> Bool {
        if  index > self.length  {
            print("index非法，请进行检查")
            return false
        }
        return true
    }
    
}
