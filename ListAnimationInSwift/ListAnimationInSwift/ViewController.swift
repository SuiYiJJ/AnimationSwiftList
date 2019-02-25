//
//  ViewController.swift
//  ListAnimationInSwift
//
//  Created by 任俊峰 on 2019/2/23.
//  Copyright © 2019 任俊峰. All rights reserved.
//

import UIKit

//let capacity = 10
//var array : NSMutableArray = NSMutableArray(capacity: capacity)
////var count = 5
//var arrayLabel : NSMutableArray = NSMutableArray(capacity: 10)
//var arrayLine : NSMutableArray = NSMutableArray(capacity: 10)


class ViewController: UIViewController {
    override func viewDidLoad() {
        //        super.viewDidLoad()
    }
//    var count = 5
//    @IBOutlet weak var indexNum: UITextField!
//    //生成单链表按钮
//    var produceButton : UIButton?
//    //搜索按钮
//    var searchButton : UIButton?
//    //删除按钮
//    var deleteButton : UIButton?
//    //插入按钮
//    var insertButton : UIButton?
//    
//    var listLabel :UILabel?
//    //    var index : Int = 0
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//        //produceButton setup
//        produceButton = UIButton(frame: CGRect(x: -394, y: 900, width: self.view.frame.width-2*20, height: 50))
//        produceButton?.backgroundColor = UIColor(red: 50/255.0, green: 185/255.0, blue: 170/255.0, alpha: 1.0)
//        produceButton?.setTitle("生成线性表", for: UIControl.State.normal)
//        produceButton?.addTarget(self, action: #selector(ViewController.loginAction), for: UIControl.Event.touchUpInside )
//        
//        //searchButton setup
//        searchButton = UIButton(frame: CGRect(x:-394,y:100,width:200,height:50))
//        searchButton?.backgroundColor=UIColor(red: 50/255.0, green: 185/255.0, blue: 170/255.0, alpha: 1.0)
//        searchButton?.setTitle("搜索", for: UIControl.State.normal)
//        searchButton?.addTarget(self, action: #selector(ViewController.searchAction), for: UIControl.Event.touchUpInside)
//        
//        //deleteButton setup
//        deleteButton = UIButton(frame: CGRect(x:-394,y:160,width:200,height:50))
//        deleteButton?.backgroundColor=UIColor(red: 50/255.0, green: 185/255.0, blue: 170/255.0, alpha: 1.0)
//        deleteButton?.setTitle("删除", for: UIControl.State.normal)
//        deleteButton?.addTarget(self, action: #selector(ViewController.deleteAction), for: UIControl.Event.touchUpInside)
//        
//        //insertButton setup
//        
//        insertButton = UIButton(frame: CGRect(x:-394,y:220,width:200,height:50))
//        insertButton?.backgroundColor=UIColor(red: 50/255.0, green: 185/255.0, blue: 170/255.0, alpha: 1.0)
//        insertButton?.setTitle("插入", for: UIControl.State.normal)
//        insertButton?.addTarget(self, action: #selector(ViewController.insertAction), for: UIControl.Event.touchUpInside)
//        
//        
//        self.view.addSubview(insertButton!)
//        self.view.addSubview(searchButton!)
//        self.view.addSubview(deleteButton!)
//        self.view.addSubview(produceButton!)
//    }
//    override func viewWillAppear(_ animated: Bool) {
//        UIView.animate(withDuration: 1, animations: {
//            self.produceButton!.frame = CGRect(x: 20, y: self.produceButton!.frame.origin.y, width: self.produceButton!.frame.width, height: self.produceButton!.frame.height)
//        })
//        UIView.animate(withDuration: 1) {
//            self.searchButton!.frame = CGRect(x: 40,y:self.searchButton!.frame.origin.y,width:self.searchButton!.frame.width,height:self.searchButton!.frame.height)
//        }
//        UIView.animate(withDuration: 1) {
//            self.insertButton!.frame = CGRect(x: 40,y:self.insertButton!.frame.origin.y,width:self.insertButton!.frame.width,height:self.insertButton!.frame.height)
//        }
//        UIView.animate(withDuration: 1) {
//            self.deleteButton!.frame = CGRect(x: 40,y:self.deleteButton!.frame.origin.y,width:self.deleteButton!.frame.width,height:self.deleteButton!.frame.height)
//        }
//    }
//    @objc func searchAction(){
//        //恢复原样再操作
//        for i in 0..<count{
//            (arrayLabel[i] as! UILabel).backgroundColor=UIColor.white
//            print("/(i)变红")
//            (arrayLine[i] as! CAShapeLayer).strokeColor = UIColor.gray.cgColor
//        }
//        print("清空颜色")
//        // 方法3
//        // 1 实例化
//        let alertVC = UIAlertController(title: "请输入你想搜索的索引位置", message: "Apex无敌", preferredStyle: UIAlertController.Style.alert)
//        // 2 带输入框
//        
//        //        alertVC.addTextField {
//        //            (textField: UITextField!) -> Void in
//        //            textField.placeholder = "密码"
//        //            textField.isSecureTextEntry = true
//        //        }
//        // 3 命令（样式：退出Cancel，警告Destructive-按钮标题为红色，默认Default）
//        let alertActionCancel = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.destructive, handler: nil)
//        let alertActionOK = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: {
//            action in
//            print("OK")
//            
//            // 3-1 获取输入框的输入信息
//            
//            //            let password = alertVC.textFields!.last! as UITextField
//            //            print("索引：\(String(describing: password.text))")
//            ////            let number : String! = password.text
//            ////            let index : Int = Int(number!) ?? 1
//            ////            let number = (alertVC.textFields!.last!.text as NSString?)?.integerValue
//            ////            self.index = number!
//            //            self.indexNum.text = password.text
//            //            var number :String = password.text!
//            //            let index :Int = Int(number)!
//        })
//        alertVC.addAction(alertActionCancel)
//        alertVC.addAction(alertActionOK)
//        // 4 跳转显示
//        self.present(alertVC, animated: true, completion: nil)
//        print("\(self.index)")
//        
//        let index = Int(self.indexNum.text!)
//        //
//        
//        if index! < 0 {
//            let alertView = UIAlertController(title: "小老弟出界了", message: "Apex", preferredStyle: UIAlertController.Style.alert)
//            let alertActionCancel = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.destructive, handler: nil)
//            alertView.addAction(alertActionCancel)
//            self.present(alertView, animated: true, completion: nil)
//        }else if index! > count{
//            for i in 0..<index!{
//                DispatchAfter(after: Double(i+2)) {
//                    (arrayLabel[i] as! UILabel).backgroundColor=UIColor.red
//                    print("/(i)变红")
//                    (arrayLine[i] as! CAShapeLayer).strokeColor = UIColor.red.cgColor
//                }
//                if i == count-1{
//                    let alertView = UIAlertController(title: "小老弟出界了", message: "Apex", preferredStyle: UIAlertController.Style.alert)
//                    let alertActionCancel = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.destructive, handler: nil)
//                    alertView.addAction(alertActionCancel)
//                    self.present(alertView, animated: true, completion: nil)
//                    break
//                }
//            }
//        }else{
//            for i in 0..<index!{
//                DispatchAfter(after: Double(i+2)) {
//                    (arrayLabel[i] as! UILabel).backgroundColor=UIColor.red
//                    print("/(i)变红")
//                    (arrayLine[i] as! CAShapeLayer).strokeColor = UIColor.red.cgColor
//                }
//            }
//            DispatchAfter(after: Double(index!+3)) {
//                (arrayLabel[index!] as! UILabel).backgroundColor=UIColor.green
//                print("/(i)变绿")
//                let alertView = UIAlertController(title: "哈哈哈😄找到了", message: "Apex", preferredStyle: UIAlertController.Style.alert)
//                let alertActionCancel = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.destructive, handler: nil)
//                alertView.addAction(alertActionCancel)
//                self.present(alertView, animated: true, completion: nil)
//            }
//            
//            
//            
//        }
//        
//        
//    }
//    @objc func deleteAction(){
//        let index = 1
//        
//        drawDelete(xCoordinate: 462, yCoordinate: 180*index-80, time: 3,color: UIColor.gray.cgColor)
////        (arrayLabel[index] as! UILabel).alpha = 0
////        drawArrow(xCoordinate: 512, yCoordinate: 150+180*index, time: 10, height: 310)
//        DispatchAfter(after: Double(4)) {
//            UIView.animate(withDuration: 2, animations: {
////                (arrayLabel[index] as! UILabel).alpha = 0
////                arrayLabel.removeObject(at: index)
//                (arrayLabel[index] as! UILabel).removeFromSuperview()
//                (arrayLine[index-1] as! CAShapeLayer).strokeColor = UIColor.white.cgColor
//                (arrayLine[index] as! CAShapeLayer).strokeColor = UIColor.white.cgColor
//            })
//            self.drawArrow(xCoordinate: 512, yCoordinate: 180*index-30, time: 3, height: 310)
//        }
//        DispatchAfter(after: Double(5)) {
//            self.drawDelete(xCoordinate: 462, yCoordinate: 180*index-80, time: 2,color: UIColor.white.cgColor)
//        }
//        
//        count =  count - 1
//        DispatchAfter(after: Double(10)) {
//            self.refresh(index : index)
//        }
//        
//    }
//    func refresh(index : Int){
//        for i in 0..<arrayLine.count{
//            (arrayLine[i] as! CAShapeLayer).removeFromSuperlayer()
//        }
//        arrayLabel.removeObject(at: index)
//        for i in index..<arrayLabel.count{
//            (arrayLabel[i] as! UILabel).removeFromSuperview()
//            (arrayLabel[i] as! UILabel).frame = CGRect(x: 462, y: 100+180*i, width: 100, height: 50)
//            drawArrow(xCoordinate: 512, yCoordinate: 180*i-30, time: i,height: 130)
//            self.view.addSubview((arrayLabel[i] as! UILabel))
//        }
//    }
//    
//
//    @objc func insertAction(){
//        let index = 1
//        count = count + 1
//        let labelTemp = UILabel(frame: CGRect(x: 462+150, y: 90+180*index-80, width: 100, height: 50))
//        //设置边框大小
//        labelTemp.layer.borderWidth=5
//        labelTemp.text = "a"
//        //字体居中
//        labelTemp.textAlignment = NSTextAlignment.center
//        //设置字体颜色
//        labelTemp.textColor=UIColor.blue
//        //设置字体大小
//        labelTemp.font = UIFont.systemFont(ofSize: 50)
//        self.view.addSubview(labelTemp)
//        
//        DispatchAfter(after: Double(3)) {
//            self.drawInsert1(xCoordinate: 462, yCoordinate: 180*index-80, time: 3,color: UIColor.gray.cgColor)
//        }
//        
//        drawInsert2(xCoordinate: 462, yCoordinate: 180*index-80, time: 3,color: UIColor.gray.cgColor)
//        arrayLabel.insert(labelTemp, at: 1)
//        DispatchAfter(after: 8) {
//            self.insertrefresh(index: 1)
//        }
//       
//    }
//    func insertrefresh(index : Int){
//        for i in 0..<arrayLine.count{
//            (arrayLine[i] as! CAShapeLayer).removeFromSuperlayer()
//        }
//        
//        for i in index..<arrayLabel.count{
//            (arrayLabel[i] as! UILabel).removeFromSuperview()
//            (arrayLabel[i] as! UILabel).frame = CGRect(x: 462, y: 100+180*i, width: 100, height: 50)
//            drawArrow(xCoordinate: 512, yCoordinate: 180*i-30, time: i,height: 130)
//            self.view.addSubview((arrayLabel[i] as! UILabel))
//        }
//    }
//    
//    @objc func loginAction(){
//        UIView.beginAnimations(nil, context: nil)//动画开始
//        UIView.setAnimationDuration(2)//动画周期设置
//        let angle :CGFloat=CGFloat(Double.pi)
//        produceButton!.transform=CGAffineTransform(rotationAngle: angle)
//        produceButton!.frame = CGRect(x: 400, y: 0, width: self.produceButton!.frame.width*0.1, height: self.produceButton!.frame.width*0.1)
//        produceButton!.alpha=0
//        //        UIView.setAnimationDelay(10)//动画延迟处理
//        
//        UIView.commitAnimations()//动画提交
//        produceTheSingleList()
//        
//    }
//    
//    //生成单链表
//    func produceTheSingleList() {
//        let list = OneDirectionLinkList()
//        
//        var callResult =  false
//        //随机生成线性表
//        for _ in 0..<count {
//            let  NwNumber1 = arc4random()%100
//            
//            array.add("\(NwNumber1)")
//        }
//        
//        callResult = list.forwardDirectionCreateList(items: array as Array<AnyObject>)
//        
//        if callResult {
//            print("正向创建链表")
//            list.display()
//            //            headNodeForAnimation = list.headNode
//            for i in 0..<count+1{
//                //设计一长条链式结构
//                listLabel = UILabel(frame: CGRect(x:462,y:100+180*i,width:100,height:50))
//                //设置边框大小
//                listLabel?.layer.borderWidth=5
//                //从链表中取出数据显示出来
//                let listText = list.getNode(atIndex: i+1)
//                if listText == nil{
//                    listLabel?.text="nil"
//                }else{
//                    listLabel?.text = listText as? String
//                }
//                //画箭头
//                if i != count{
//                    drawArrow(xCoordinate: 512, yCoordinate: 150+180*i, time: i,height: 130)
//                }
//                //字体居中
//                listLabel?.textAlignment = NSTextAlignment.center
//                //设置字体颜色
//                listLabel?.textColor=UIColor.blue
//                //设置字体大小
//                listLabel?.font = UIFont.systemFont(ofSize: 50)
//                //添加至视图中
//                arrayLabel[i] = listLabel
//                self.view.addSubview(listLabel!)
//            }
//            
//        }
//        
//    }
//    
//    
//    
//    @IBAction func deleteByIndex(_ sender: Any) {
//        
//        
//        DispatchTimer(timeInterval: 1, repeatCount: 10) { (timer, count) in
//            print("剩余执行次数 = \(count)")
//        }
//        DispatchAfter(after: 5) {
//            (arrayLabel[1] as! UILabel).backgroundColor=UIColor.red
//        }
//        
//        DispatchAfter(after: 10) {
//            (arrayLabel[2] as! UILabel).backgroundColor=UIColor.red
//        }
//        
//    }
//    //GCD延时操作
//    func DispatchAfter(after: Double, handler:@escaping ()->())
//    {
//        DispatchQueue.main.asyncAfter(deadline: .now() + after) {
//            handler()
//        }
//    }
//    //GCD定时器倒计时
//    func DispatchTimer(timeInterval: Double, repeatCount:Int, handler:@escaping (DispatchSourceTimer?, Int)->())
//    {
//        if repeatCount <= 0 {
//            return
//        }
//        let timer = DispatchSource.makeTimerSource(flags: [], queue: DispatchQueue.main)
//        var count = repeatCount
//        timer.schedule(wallDeadline: .now(), repeating: timeInterval)
//        timer.setEventHandler(handler: {
//            count -= 1
//            DispatchQueue.main.async {
//                handler(timer, count)
//            }
//            if count == 0 {
//                timer.cancel()
//            }
//        })
//        timer.resume()
//    }
//    
//    
//    //MARK:画箭头
//    func drawArrow(xCoordinate: Int,yCoordinate:Int,time:Int,height:Int){
//        // 线的路径
//        let linePath = UIBezierPath.init()
//        //MARK: 动画
//        
//        // 起点
//        linePath.move(to: CGPoint.init(x: xCoordinate, y: yCoordinate))
//        // 其他点
//        linePath.addLine(to: CGPoint.init(x: xCoordinate, y: yCoordinate+height-10))
//        linePath.addLine(to: CGPoint.init(x:xCoordinate-10,y:yCoordinate+height-20))
//        linePath.addLine(to: CGPoint.init(x:xCoordinate+10,y:yCoordinate+height-20))
//        linePath.addLine(to: CGPoint.init(x: xCoordinate, y: yCoordinate+height-10))
//        //可以添加n多个点 可为折线，直线等
//        //        linePath.addLine(to: CGPoint.init(x: 90, y: 70))
//        
//        let lineLayer = CAShapeLayer.init()
//        
//        lineLayer.lineWidth = 10
//        lineLayer.strokeColor = UIColor.gray.cgColor
//        lineLayer.path = linePath.cgPath
//        lineLayer.fillColor = UIColor.clear.cgColor
//        //动画1
//        let animation = CABasicAnimation(keyPath: "strokeEnd")
//        animation.fromValue = 0
//        animation.toValue = 1
//        animation.duration = CFTimeInterval(time)
//        lineLayer.add(animation, forKey: "")
//        arrayLine.add(lineLayer)
//        self.view.layer.addSublayer(lineLayer)
//    }
//    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
//        // 获取输入的文本，移除向输入框中粘贴文本时，系统自动加上的空格（iOS11上有该问题）
//        let new = string.replacingOccurrences(of: " ", with: "")
//        // 获取编辑前的文本
//        var old = NSString(string: textField.text ?? "")
//        // 获取编辑后的文本
//        old = old.replacingCharacters(in: range, with: new) as NSString
//        // 获取数字的字符集
//        let number = CharacterSet(charactersIn: "0123456789")
//        // 判断编辑后的文本是否全为数字
//        if old.rangeOfCharacter(from: number.inverted).location == NSNotFound {
//            // number.inverted表示除了number中包含的字符以外的其他全部字符
//            // 如果old中不包含其他字符，则格式正确
//            // 允许本次编辑
//            textField.text = old as String
//            // 移动光标的位置
//            DispatchQueue.main.async {
//                let beginning = textField.beginningOfDocument
//                let position = textField.position(from: beginning, offset: range.location + new.count)!
//                textField.selectedTextRange = textField.textRange(from: position, to: position)
//            }
//        }
//        return false
//    }
//    func drawDelete(xCoordinate: Int,yCoordinate:Int,time:Int,color :CGColor){
//        // 线的路径
//        let linePath = UIBezierPath.init()
//        //MARK: 动画
//        
//        // 起点
//        linePath.move(to: CGPoint.init(x: xCoordinate+100, y: yCoordinate+25))
//        // 其他点
//        linePath.addLine(to: CGPoint.init(x: xCoordinate+200, y: yCoordinate+25))
//        linePath.addLine(to: CGPoint.init(x:xCoordinate+200,y:yCoordinate+385))
//        linePath.addLine(to: CGPoint.init(x:xCoordinate+100,y:yCoordinate+385))
//        linePath.addLine(to: CGPoint.init(x: xCoordinate+110, y: yCoordinate+375))
//        linePath.addLine(to: CGPoint.init(x: xCoordinate+110, y: yCoordinate+395))
//        linePath.addLine(to: CGPoint.init(x:xCoordinate+100,y:yCoordinate+385))
//        
//        //可以添加n多个点 可为折线，直线等
//        //        linePath.addLine(to: CGPoint.init(x: 90, y: 70))
//        
//        let lineLayer = CAShapeLayer.init()
//        
//        lineLayer.lineWidth = 10
//        lineLayer.strokeColor = color
//        lineLayer.path = linePath.cgPath
//        lineLayer.fillColor = UIColor.clear.cgColor
//        //动画1
//        let animation = CABasicAnimation(keyPath: "strokeEnd")
//        animation.fromValue = 0
//        animation.toValue = 1
//        animation.duration = CFTimeInterval(time)
//        lineLayer.add(animation, forKey: "")
//        arrayLine.add(lineLayer)
//        self.view.layer.addSublayer(lineLayer)
//    }
//    
//    func drawInsert1(xCoordinate: Int,yCoordinate:Int,time:Int,color :CGColor){
//        // 线的路径
//        let linePath = UIBezierPath.init()
//        //MARK: 动画
//        
//        // 起点
//        linePath.move(to: CGPoint.init(x: xCoordinate+100, y: yCoordinate+25))
//        // 其他点
//        linePath.addLine(to: CGPoint.init(x: xCoordinate+200, y: yCoordinate+25))
//        linePath.addLine(to: CGPoint.init(x:xCoordinate+200,y:yCoordinate+80))
//        linePath.addLine(to: CGPoint.init(x:xCoordinate+190,y:yCoordinate+70))
//        linePath.addLine(to: CGPoint.init(x: xCoordinate+210, y: yCoordinate+70))
//        linePath.addLine(to: CGPoint.init(x:xCoordinate+200,y:yCoordinate+80))
//        
//        //可以添加n多个点 可为折线，直线等
//        //        linePath.addLine(to: CGPoint.init(x: 90, y: 70))
//        
//        let lineLayer = CAShapeLayer.init()
//        
//        lineLayer.lineWidth = 10
//        lineLayer.strokeColor = color
//        lineLayer.path = linePath.cgPath
//        lineLayer.fillColor = UIColor.clear.cgColor
//        //动画1
//        let animation = CABasicAnimation(keyPath: "strokeEnd")
//        animation.fromValue = 0
//        animation.toValue = 1
//        animation.duration = CFTimeInterval(time)
//        lineLayer.add(animation, forKey: "")
//        arrayLine.add(lineLayer)
//        self.view.layer.addSublayer(lineLayer)
//    }
//    func drawInsert2(xCoordinate: Int,yCoordinate:Int,time:Int,color :CGColor){
//        // 线的路径
//        let linePath = UIBezierPath.init()
//        //MARK: 动画
//        
//        // 起点
//        linePath.move(to: CGPoint.init(x: xCoordinate+200, y: yCoordinate+90+50))
//        // 其他点
//        linePath.addLine(to: CGPoint.init(x: xCoordinate+200, y: yCoordinate+205))
//        linePath.addLine(to: CGPoint.init(x:xCoordinate+110,y:yCoordinate+205))
//        linePath.addLine(to: CGPoint.init(x:xCoordinate+120,y:yCoordinate+195))
//        linePath.addLine(to: CGPoint.init(x: xCoordinate+120, y: yCoordinate+215))
//        linePath.addLine(to: CGPoint.init(x:xCoordinate+110,y:yCoordinate+205))
//        
//        //可以添加n多个点 可为折线，直线等
//        //        linePath.addLine(to: CGPoint.init(x: 90, y: 70))
//        
//        let lineLayer = CAShapeLayer.init()
//        
//        lineLayer.lineWidth = 10
//        lineLayer.strokeColor = color
//        lineLayer.path = linePath.cgPath
//        lineLayer.fillColor = UIColor.clear.cgColor
//        //动画1
//        let animation = CABasicAnimation(keyPath: "strokeEnd")
//        animation.fromValue = 0
//        animation.toValue = 1
//        animation.duration = CFTimeInterval(time)
//        lineLayer.add(animation, forKey: "")
//        arrayLine.add(lineLayer)
//        self.view.layer.addSublayer(lineLayer)
//    }
//

}

//需要添加的地方
/**
 1.删除前面寻找节点的步骤要加颜色
 2.延迟十秒把颜色清空
 3.指针所代表的线也可以加一下颜色s
 
 
 
 
 
 */
