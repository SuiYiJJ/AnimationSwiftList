//
//  TwoDiretionViewController.swift
//  ListAnimationInSwift
//
//  Created by 任俊峰 on 2019/2/25.
//  Copyright © 2019 任俊峰. All rights reserved.
//

import UIKit

var arrayLabelTwo : NSMutableArray = NSMutableArray(capacity: 10)
var arrayLineDown : NSMutableArray = NSMutableArray(capacity: 10)
var arrayLineUp : NSMutableArray = NSMutableArray(capacity: 10)
var arrayLineTemp : NSMutableArray = NSMutableArray(capacity: 10)
class TwoDirectionViewController: UIViewController {

    
    var count = 5
    
    //生成单链表按钮
    var produceButton : UIButton?
    //搜索按钮
    var searchButton : UIButton?
    //删除按钮
    var deleteButton : UIButton?
    //插入按钮
    var insertButton : UIButton?
    
    var listLabel :UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        // Do any additional setup after loading the view, typically from a nib.
        //produceButton setup
        produceButton = UIButton(frame: CGRect(x: -394, y: 900, width: self.view.frame.width-2*20, height: 50))
        produceButton?.backgroundColor = UIColor(red: 50/255.0, green: 185/255.0, blue: 170/255.0, alpha: 1.0)
        produceButton?.setTitle("生成线性表（双向链表）", for: UIControl.State.normal)
        produceButton?.addTarget(self, action: #selector(TwoDirectionViewController.produceAction), for: UIControl.Event.touchUpInside )
        
        //searchButton setup
        searchButton = UIButton(frame: CGRect(x:-394,y:100,width:200,height:50))
        searchButton?.backgroundColor=UIColor(red: 50/255.0, green: 185/255.0, blue: 170/255.0, alpha: 1.0)
        searchButton?.setTitle("搜索", for: UIControl.State.normal)
        searchButton?.addTarget(self, action: #selector(TwoDirectionViewController.searchAction), for: UIControl.Event.touchUpInside)
        
        //deleteButton setup
        deleteButton = UIButton(frame: CGRect(x:-394,y:160,width:200,height:50))
        deleteButton?.backgroundColor=UIColor(red: 50/255.0, green: 185/255.0, blue: 170/255.0, alpha: 1.0)
        deleteButton?.setTitle("删除", for: UIControl.State.normal)
        deleteButton?.addTarget(self, action: #selector(TwoDirectionViewController.deleteAction), for: UIControl.Event.touchUpInside)
        
        //insertButton setup
        
        insertButton = UIButton(frame: CGRect(x:-394,y:220,width:200,height:50))
        insertButton?.backgroundColor=UIColor(red: 50/255.0, green: 185/255.0, blue: 170/255.0, alpha: 1.0)
        insertButton?.setTitle("插入", for: UIControl.State.normal)
        insertButton?.addTarget(self, action: #selector(TwoDirectionViewController.insertAction), for: UIControl.Event.touchUpInside)
        
        
        self.view.addSubview(insertButton!)
        self.view.addSubview(searchButton!)
        self.view.addSubview(deleteButton!)
        self.view.addSubview(produceButton!)
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1, animations: {
            self.produceButton!.frame = CGRect(x: 20, y: self.produceButton!.frame.origin.y, width: self.produceButton!.frame.width, height: self.produceButton!.frame.height)
        })
        UIView.animate(withDuration: 1) {
            self.searchButton!.frame = CGRect(x: 40,y:self.searchButton!.frame.origin.y,width:self.searchButton!.frame.width,height:self.searchButton!.frame.height)
        }
        UIView.animate(withDuration: 1) {
            self.insertButton!.frame = CGRect(x: 40,y:self.insertButton!.frame.origin.y,width:self.insertButton!.frame.width,height:self.insertButton!.frame.height)
        }
        UIView.animate(withDuration: 1) {
            self.deleteButton!.frame = CGRect(x: 40,y:self.deleteButton!.frame.origin.y,width:self.deleteButton!.frame.width,height:self.deleteButton!.frame.height)
        }
    }

    @objc func produceAction(){
        UIView.beginAnimations(nil, context: nil)//动画开始
        UIView.setAnimationDuration(2)//动画周期设置
        let angle :CGFloat=CGFloat(Double.pi)
        produceButton!.transform=CGAffineTransform(rotationAngle: angle)
        produceButton!.frame = CGRect(x: 400, y: 0, width: self.produceButton!.frame.width*0.1, height: self.produceButton!.frame.width*0.1)
        produceButton!.alpha=0
        //        UIView.setAnimationDelay(10)//动画延迟处理
        
        UIView.commitAnimations()//动画提交
        produceTwoDirectionList()
    }
    func produceTwoDirectionList(){
        let list = DoublyLinkedList()
        
        var callResult =  false
        //随机生成线性表
        for _ in 0..<count {
            let  NwNumber1 = arc4random()%100
            
            array.add("\(NwNumber1)")
        }
        
        callResult = list.forwardDirectionCreateList(items: array as Array<AnyObject>)
        
        if callResult {
            print("正向创建链表")
            list.display()
            //            headNodeForAnimation = list.headNode
            for i in 0..<count+1{
                //设计一长条链式结构
                listLabel = UILabel(frame: CGRect(x:412,y:100+180*i,width:200,height:50))
                //设置边框大小
                listLabel?.layer.borderWidth=5
                //从链表中取出数据显示出来
                let listText = list.getNode(atIndex: i+1)
                if listText == nil{
                    listLabel?.text="nil"
                }else{
                    listLabel?.text = listText as? String
                }
                //画箭头
                if i != count{
                    self.drawArrow(xCoordinate1: 582, yCoordinate1: 150+180*i,xCoordinate2: 582, yCoordinate2: 270+180*i, time: i,width: 10)
                    self.drawArrow(xCoordinate1: 462, yCoordinate1: 280+180*i,xCoordinate2: 462, yCoordinate2: 155+180*i, time: i,width: -10)
                }
                //字体居中
                listLabel?.textAlignment = NSTextAlignment.center
                //设置字体颜色
                listLabel?.textColor=UIColor.blue
                //设置字体大小
                listLabel?.font = UIFont.systemFont(ofSize: 50)
                //添加至视图中
                arrayLabelTwo[i] = listLabel
                self.view.addSubview(listLabel!)
            }
            
        }
    }
    @objc func searchAction(){
        //先默认down吧，后面再改
        //恢复原样再操作
        for i in 0..<count{
            (arrayLabelTwo[i] as! UILabel).backgroundColor=UIColor.white
            print("/(i)变红")
            (arrayLineDown[i] as! CAShapeLayer).strokeColor = UIColor.gray.cgColor
        }
        print("清空颜色")
        let index = 3
        for i in 0..<index{
            DispatchAfter(after: Double(i+2)) {
                (arrayLabelTwo[i] as! UILabel).backgroundColor=UIColor.red
                print("/(i)变红")
                (arrayLineDown[i] as! CAShapeLayer).strokeColor = UIColor.red.cgColor
            }
        }
        DispatchAfter(after: Double(index+3)) {
            (arrayLabelTwo[index] as! UILabel).backgroundColor=UIColor.green
            print("/(i)变绿")
            let alertView = UIAlertController(title: "哈哈哈😄找到了", message: "Apex", preferredStyle: UIAlertController.Style.alert)
            let alertActionCancel = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.destructive, handler: nil)
            alertView.addAction(alertActionCancel)
            self.present(alertView, animated: true, completion: nil)
        }
        
        
        
    }
    @objc func deleteAction(){
        let index = 2
        
        drawDelete1(xCoordinate: 462+50, yCoordinate: 180*index-80, time:0,color: UIColor.gray.cgColor)
        drawDelete2(xCoordinate: 412, yCoordinate: 180*index-80, time: 0, color: UIColor.gray.cgColor)
        DispatchAfter(after: Double(2)) {
            UIView.animate(withDuration: 2, animations: {
                //                (arrayLabel[index] as! UILabel).alpha = 0
                //                arrayLabel.removeObject(at: index)
                (arrayLabelTwo[index] as! UILabel).removeFromSuperview()
                (arrayLineDown[index-1] as! CAShapeLayer).strokeColor = UIColor.white.cgColor
                (arrayLineDown[index] as! CAShapeLayer).strokeColor = UIColor.white.cgColor
                (arrayLineUp[index-1] as! CAShapeLayer).strokeColor = UIColor.white.cgColor
                (arrayLineUp[index] as! CAShapeLayer).strokeColor = UIColor.white.cgColor
            })
//            self.drawArrowFUC(xCoordinate: 512, yCoordinate: 180*index-30, time: 3, height: 310)
        }
//        DispatchAfter(after: Double(5)) {
//            self.drawDelete1(xCoordinate: 462, yCoordinate: 180*index-80, time: 2,color: UIColor.white.cgColor)
//        }
        
        count =  count - 1
        DispatchAfter(after: Double(5)) {
            self.refresh(index : index)
        }
    }
    func refresh(index : Int){
        for i in 0..<arrayLineTemp.count{
            (arrayLineTemp[i] as! CAShapeLayer).removeFromSuperlayer()
        }
        for i in index..<arrayLineDown.count{
            (arrayLineDown[i] as! CAShapeLayer).removeFromSuperlayer()
        }
        for i in index..<arrayLineUp.count{
            (arrayLineUp[i] as! CAShapeLayer).removeFromSuperlayer()
        }
        arrayLabelTwo.removeObject(at: index)
//        for i in index..<arrayLabelTwo.count{
//            (arrayLabelTwo[i] as! UILabel).removeFromSuperview()
//            (arrayLabelTwo[i] as! UILabel).frame = CGRect(x: 462, y: 100+180*i, width: 100, height: 50)
////            drawArrow(xCoordinate1: 512, yCoordinate1: 180*i-30, xCoordinate2: 130, yCoordinate2: 1, time: i, width: 1)
//            
//            self.view.addSubview((arrayLabel[i] as! UILabel))
//        }
        for i in index..<arrayLabelTwo.count{
            (arrayLabelTwo[i] as! UILabel).removeFromSuperview()
            (arrayLabelTwo[i] as! UILabel).frame = CGRect(x: 412, y: 100+180*i, width: 200, height: 50)
            
            self.view.addSubview((arrayLabelTwo[i] as! UILabel))
        }
        for i in 0..<arrayLabelTwo.count-1{
            self.drawArrow(xCoordinate1: 582, yCoordinate1: 150+180*i,xCoordinate2: 582, yCoordinate2: 270+180*i, time: i,width: 10)
            self.drawArrow(xCoordinate1: 462, yCoordinate1: 280+180*i,xCoordinate2: 462, yCoordinate2: 155+180*i, time: i,width: -10)
        }
    }
    @objc func insertAction(){
        let index = 3
        count = count + 1
        let labelTemp = UILabel(frame: CGRect(x: 412+200+50, y: 90+180*index-80, width: 200, height: 50))
        //设置边框大小
        labelTemp.layer.borderWidth=5
        labelTemp.text = "a"
        //字体居中
        labelTemp.textAlignment = NSTextAlignment.center
        //设置字体颜色
        labelTemp.textColor=UIColor.blue
        //设置字体大小
        labelTemp.font = UIFont.systemFont(ofSize: 50)
        self.view.addSubview(labelTemp)
//
        arrayLabelTwo.insert(labelTemp, at: index)
        
        DispatchAfter(after: Double(1.5)) {
            
            self.drawInsert1(xCoordinate: 412+10, yCoordinate: 180*index-80, time: 1,color: UIColor.red.cgColor)
            
        }
        DispatchAfter(after: Double(3)) {
            
            self.drawInsert2(xCoordinate: 412, yCoordinate: 180*index-80, time: 1,color: UIColor.purple.cgColor)
            (arrayLineDown[index-1] as! CAShapeLayer).strokeColor = UIColor.white.cgColor
        }
        DispatchAfter(after: Double(4.5)) {
            
            self.drawInsert3(xCoordinate: 412+200+50+200-30, yCoordinate: 180*index+60, time: 1,color: UIColor.blue.cgColor)
        }
        DispatchAfter(after: Double(6)) {
            
            self.drawInsert4(xCoordinate: 412+30, yCoordinate: 180*index+60+40, time: 1,color: UIColor.cyan.cgColor)
            (arrayLineUp[index-1] as! CAShapeLayer).strokeColor = UIColor.white.cgColor
        }
        DispatchAfter(after: 8) {
            self.insertrefresh(index: 1)
        }
//
//        drawInsert2(xCoordinate: 462, yCoordinate: 180*index-80, time: 3,color: UIColor.gray.cgColor)
//        arrayLabel.insert(labelTemp, at: 1)
//        DispatchAfter(after: 8) {
//            self.insertrefresh(index: 1)
//        }
    }
    func insertrefresh(index : Int){
        //清一波连接线
        for i in 0..<arrayLineTemp.count{
            (arrayLineTemp[i] as! CAShapeLayer).removeFromSuperlayer()
        }
        for i in index..<arrayLineDown.count{
            (arrayLineDown[i] as! CAShapeLayer).removeFromSuperlayer()
        }
        for i in index..<arrayLineUp.count{
            (arrayLineUp[i] as! CAShapeLayer).removeFromSuperlayer()
        }
        
        for i in index..<arrayLabelTwo.count{
            (arrayLabelTwo[i] as! UILabel).removeFromSuperview()
            (arrayLabelTwo[i] as! UILabel).frame = CGRect(x: 412, y: 100+180*i, width: 200, height: 50)
            
            self.view.addSubview((arrayLabelTwo[i] as! UILabel))
        }
        for i in index..<arrayLabelTwo.count-1{
            self.drawArrow(xCoordinate1: 582, yCoordinate1: 150+180*i,xCoordinate2: 582, yCoordinate2: 270+180*i, time: i,width: 10)
            self.drawArrow(xCoordinate1: 462, yCoordinate1: 280+180*i,xCoordinate2: 462, yCoordinate2: 155+180*i, time: i,width: -10)
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    func drawArrow(xCoordinate1: Int,yCoordinate1:Int,xCoordinate2: Int,yCoordinate2:Int,time:Int,width:Int){
        // 线的路径
        let linePath = UIBezierPath.init()
        //MARK: 动画
        
        // 起点
        linePath.move(to: CGPoint.init(x: xCoordinate1, y: yCoordinate1))
        // 其他点
        linePath.addLine(to: CGPoint.init(x: xCoordinate2, y: yCoordinate2))
        linePath.addLine(to: CGPoint.init(x:xCoordinate2-10,y:yCoordinate2-width))
        linePath.addLine(to: CGPoint.init(x:xCoordinate2+10,y:yCoordinate2-width))
        linePath.addLine(to: CGPoint.init(x: xCoordinate2, y: yCoordinate2))
        //可以添加n多个点 可为折线，直线等
        //        linePath.addLine(to: CGPoint.init(x: 90, y: 70))
        
        let lineLayer = CAShapeLayer.init()
        
        lineLayer.lineWidth = 10
        lineLayer.strokeColor = UIColor.gray.cgColor
        lineLayer.path = linePath.cgPath
        lineLayer.fillColor = UIColor.clear.cgColor
        //动画1
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.fromValue = 0
        animation.toValue = 1
        animation.duration = CFTimeInterval(time)
        lineLayer.add(animation, forKey: "")
        if(width > 0){
            arrayLineDown.add(lineLayer)
        }else{
            arrayLineUp.add(lineLayer)
        }
        
        self.view.layer.addSublayer(lineLayer)
    }
    func drawInsert2(xCoordinate: Int,yCoordinate:Int,time:Int,color :CGColor){
        // 线的路径
        let linePath = UIBezierPath.init()
        //MARK: 动画
        
        // 起点
        linePath.move(to: CGPoint.init(x: xCoordinate+180, y: yCoordinate+50))
        // 其他点
        linePath.addLine(to: CGPoint.init(x: xCoordinate+180, y: yCoordinate+60))
        linePath.addLine(to: CGPoint.init(x:xCoordinate+180+200+40,y:yCoordinate+60))
        linePath.addLine(to: CGPoint.init(x:xCoordinate+180+200+40,y:yCoordinate+70+20))
        linePath.addLine(to: CGPoint.init(x: xCoordinate+370+40, y: yCoordinate+80))
        linePath.addLine(to: CGPoint.init(x:xCoordinate+390+40,y:yCoordinate+80))
        linePath.addLine(to: CGPoint.init(x:xCoordinate+180+200+40,y:yCoordinate+70+20))
        
        //可以添加n多个点 可为折线，直线等
        //        linePath.addLine(to: CGPoint.init(x: 90, y: 70))
        
        let lineLayer = CAShapeLayer.init()
        
        lineLayer.lineWidth = 5
        lineLayer.strokeColor = color
        lineLayer.path = linePath.cgPath
        lineLayer.fillColor = UIColor.clear.cgColor
        //动画1
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.fromValue = 0
        animation.toValue = 1
        animation.duration = CFTimeInterval(time)
        lineLayer.add(animation, forKey: "")
        arrayLineTemp.add(lineLayer)
        self.view.layer.addSublayer(lineLayer)
    }
    func drawInsert1(xCoordinate: Int,yCoordinate:Int,time:Int,color :CGColor){
        // 线的路径
        let linePath = UIBezierPath.init()
        //MARK: 动画
        
        // 起点
        linePath.move(to: CGPoint.init(x: xCoordinate+200+50+20, y: yCoordinate+70+20))
        // 其他点
        linePath.addLine(to: CGPoint.init(x: xCoordinate+270, y: yCoordinate+80))
        linePath.addLine(to: CGPoint.init(x:xCoordinate+20+20,y:yCoordinate+80))
        linePath.addLine(to: CGPoint.init(x:xCoordinate+20+20,y:yCoordinate+50))
        linePath.addLine(to: CGPoint.init(x: xCoordinate+30+20, y: yCoordinate+60))
        linePath.addLine(to: CGPoint.init(x:xCoordinate+10+20,y:yCoordinate+60))
        linePath.addLine(to: CGPoint.init(x:xCoordinate+20+20,y:yCoordinate+50))
        
        //可以添加n多个点 可为折线，直线等
        //        linePath.addLine(to: CGPoint.init(x: 90, y: 70))
        
        let lineLayer = CAShapeLayer.init()
        
        lineLayer.lineWidth = 5
        lineLayer.strokeColor = color
        lineLayer.path = linePath.cgPath
        lineLayer.fillColor = UIColor.clear.cgColor
        //动画1
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.fromValue = 0
        animation.toValue = 1
        animation.duration = CFTimeInterval(time)
        lineLayer.add(animation, forKey: "")
        arrayLineTemp.add(lineLayer)
        self.view.layer.addSublayer(lineLayer)
    }
    func drawInsert3(xCoordinate: Int,yCoordinate:Int,time:Int,color :CGColor){
        // 线的路径
        let linePath = UIBezierPath.init()
        //MARK: 动画
        
        // 起点
        linePath.move(to: CGPoint.init(x: xCoordinate, y: yCoordinate))
        // 其他点
        linePath.addLine(to: CGPoint.init(x: xCoordinate, y: yCoordinate+20))
        linePath.addLine(to: CGPoint.init(x:xCoordinate-200-50,y:yCoordinate+20))
        linePath.addLine(to: CGPoint.init(x:xCoordinate-200-50,y:yCoordinate+40))
        linePath.addLine(to: CGPoint.init(x: xCoordinate-210-50, y: yCoordinate+30))
        linePath.addLine(to: CGPoint.init(x:xCoordinate-190-50,y:yCoordinate+30))
        linePath.addLine(to: CGPoint.init(x:xCoordinate-200-50,y:yCoordinate+40))
        
        //可以添加n多个点 可为折线，直线等
        //        linePath.addLine(to: CGPoint.init(x: 90, y: 70))
        
        let lineLayer = CAShapeLayer.init()
        
        lineLayer.lineWidth = 5
        lineLayer.strokeColor = color
        lineLayer.path = linePath.cgPath
        lineLayer.fillColor = UIColor.clear.cgColor
        //动画1
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.fromValue = 0
        animation.toValue = 1
        animation.duration = CFTimeInterval(time)
        lineLayer.add(animation, forKey: "")
        arrayLineTemp.add(lineLayer)
        self.view.layer.addSublayer(lineLayer)
    }
    func drawInsert4(xCoordinate: Int,yCoordinate:Int,time:Int,color :CGColor){
        // 线的路径
        let linePath = UIBezierPath.init()
        //MARK: 动画
        
        // 起点
        linePath.move(to: CGPoint.init(x: xCoordinate+20, y: yCoordinate))
        // 其他点
        linePath.addLine(to: CGPoint.init(x: xCoordinate+20, y: yCoordinate-30))
        linePath.addLine(to: CGPoint.init(x:xCoordinate+200+50,y:yCoordinate-30))
        linePath.addLine(to: CGPoint.init(x:xCoordinate+200+50,y:yCoordinate-40))
        linePath.addLine(to: CGPoint.init(x: xCoordinate+190+50, y: yCoordinate-30))
        linePath.addLine(to: CGPoint.init(x:xCoordinate+210+50,y:yCoordinate-30))
        linePath.addLine(to: CGPoint.init(x:xCoordinate+200+50,y:yCoordinate-40))
        
        //可以添加n多个点 可为折线，直线等
        //        linePath.addLine(to: CGPoint.init(x: 90, y: 70))
        
        let lineLayer = CAShapeLayer.init()
        
        lineLayer.lineWidth = 5
        lineLayer.strokeColor = color
        lineLayer.path = linePath.cgPath
        lineLayer.fillColor = UIColor.clear.cgColor
        //动画1
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.fromValue = 0
        animation.toValue = 1
        animation.duration = CFTimeInterval(time)
        lineLayer.add(animation, forKey: "")
        arrayLineTemp.add(lineLayer)
        self.view.layer.addSublayer(lineLayer)
    }
    func drawDelete1(xCoordinate: Int,yCoordinate:Int,time:Int,color :CGColor){
        // 线的路径
        let linePath = UIBezierPath.init()
        //MARK: 动画
        
        // 起点
        linePath.move(to: CGPoint.init(x: xCoordinate+100, y: yCoordinate+25))
        // 其他点
        linePath.addLine(to: CGPoint.init(x: xCoordinate+200, y: yCoordinate+25))
        linePath.addLine(to: CGPoint.init(x:xCoordinate+200,y:yCoordinate+385))
        linePath.addLine(to: CGPoint.init(x:xCoordinate+100,y:yCoordinate+385))
        linePath.addLine(to: CGPoint.init(x: xCoordinate+110, y: yCoordinate+375))
        linePath.addLine(to: CGPoint.init(x: xCoordinate+110, y: yCoordinate+395))
        linePath.addLine(to: CGPoint.init(x:xCoordinate+100,y:yCoordinate+385))
        
        //可以添加n多个点 可为折线，直线等
        //        linePath.addLine(to: CGPoint.init(x: 90, y: 70))
        
        let lineLayer = CAShapeLayer.init()
        
        lineLayer.lineWidth = 10
        lineLayer.strokeColor = color
        lineLayer.path = linePath.cgPath
        lineLayer.fillColor = UIColor.clear.cgColor
        //动画1
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.fromValue = 0
        animation.toValue = 1
        animation.duration = CFTimeInterval(time)
        lineLayer.add(animation, forKey: "")
        arrayLineTemp.add(lineLayer)
        self.view.layer.addSublayer(lineLayer)
    }
    func drawDelete2(xCoordinate: Int,yCoordinate:Int,time:Int,color :CGColor){
        // 线的路径
        let linePath = UIBezierPath.init()
        //MARK: 动画
        
        // 起点
        linePath.move(to: CGPoint.init(x: xCoordinate, y: yCoordinate+360+25))
        // 其他点
        linePath.addLine(to: CGPoint.init(x: xCoordinate-100, y: yCoordinate+360+25))
        linePath.addLine(to: CGPoint.init(x:xCoordinate-100,y:yCoordinate+25))
        linePath.addLine(to: CGPoint.init(x:xCoordinate,y:yCoordinate+25))
        linePath.addLine(to: CGPoint.init(x: xCoordinate-10, y: yCoordinate+25-10))
        linePath.addLine(to: CGPoint.init(x: xCoordinate-10, y: yCoordinate+25+10))
        linePath.addLine(to: CGPoint.init(x:xCoordinate,y:yCoordinate+25))
        
        //可以添加n多个点 可为折线，直线等
        //        linePath.addLine(to: CGPoint.init(x: 90, y: 70))
        
        let lineLayer = CAShapeLayer.init()
        
        lineLayer.lineWidth = 10
        lineLayer.strokeColor = color
        lineLayer.path = linePath.cgPath
        lineLayer.fillColor = UIColor.clear.cgColor
        //动画1
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.fromValue = 0
        animation.toValue = 1
        animation.duration = CFTimeInterval(time)
        lineLayer.add(animation, forKey: "")
        arrayLineTemp.add(lineLayer)
        self.view.layer.addSublayer(lineLayer)
    }
    //MARK:画箭头
    func drawArrowFUC(xCoordinate: Int,yCoordinate:Int,time:Int,height:Int){
        // 线的路径
        let linePath = UIBezierPath.init()
        //MARK: 动画
        
        // 起点
        linePath.move(to: CGPoint.init(x: xCoordinate, y: yCoordinate))
        // 其他点
        linePath.addLine(to: CGPoint.init(x: xCoordinate, y: yCoordinate+height-10))
        linePath.addLine(to: CGPoint.init(x:xCoordinate-10,y:yCoordinate+height-20))
        linePath.addLine(to: CGPoint.init(x:xCoordinate+10,y:yCoordinate+height-20))
        linePath.addLine(to: CGPoint.init(x: xCoordinate, y: yCoordinate+height-10))
        //可以添加n多个点 可为折线，直线等
        //        linePath.addLine(to: CGPoint.init(x: 90, y: 70))
        
        let lineLayer = CAShapeLayer.init()
        
        lineLayer.lineWidth = 10
        lineLayer.strokeColor = UIColor.gray.cgColor
        lineLayer.path = linePath.cgPath
        lineLayer.fillColor = UIColor.clear.cgColor
        //动画1
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.fromValue = 0
        animation.toValue = 1
        animation.duration = CFTimeInterval(time)
        lineLayer.add(animation, forKey: "")
        arrayLine.add(lineLayer)
        self.view.layer.addSublayer(lineLayer)
    }
    //GCD延时操作
    func DispatchAfter(after: Double, handler:@escaping ()->())
    {
        DispatchQueue.main.asyncAfter(deadline: .now() + after) {
            handler()
        }
    }
}
