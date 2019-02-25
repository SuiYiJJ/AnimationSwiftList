//
//  SequnceViewController.swift
//  ListAnimationInSwift
//
//  Created by 任俊峰 on 2019/2/25.
//  Copyright © 2019 任俊峰. All rights reserved.
//

import UIKit

class SequnceViewController: UIViewController {

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
        produceButton?.setTitle("生成线性表(公式化描述)", for: UIControl.State.normal)
        produceButton?.addTarget(self, action: #selector(SequnceViewController.produceAction), for: UIControl.Event.touchUpInside )
        
        //searchButton setup
        searchButton = UIButton(frame: CGRect(x:-394,y:100,width:200,height:50))
        searchButton?.backgroundColor=UIColor(red: 50/255.0, green: 185/255.0, blue: 170/255.0, alpha: 1.0)
        searchButton?.setTitle("搜索", for: UIControl.State.normal)
        searchButton?.addTarget(self, action: #selector(SequnceViewController.searchAction), for: UIControl.Event.touchUpInside)
        
        //deleteButton setup
        deleteButton = UIButton(frame: CGRect(x:-394,y:160,width:200,height:50))
        deleteButton?.backgroundColor=UIColor(red: 50/255.0, green: 185/255.0, blue: 170/255.0, alpha: 1.0)
        deleteButton?.setTitle("删除", for: UIControl.State.normal)
        deleteButton?.addTarget(self, action: #selector(SequnceViewController.deleteAction), for: UIControl.Event.touchUpInside)
        
        //insertButton setup
        
        insertButton = UIButton(frame: CGRect(x:-394,y:220,width:200,height:50))
        insertButton?.backgroundColor=UIColor(red: 50/255.0, green: 185/255.0, blue: 170/255.0, alpha: 1.0)
        insertButton?.setTitle("插入", for: UIControl.State.normal)
        insertButton?.addTarget(self, action: #selector(SequnceViewController.insertAction), for: UIControl.Event.touchUpInside)
        
        
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
        
    }
    @objc func searchAction(){
        
    }
    @objc func deleteAction(){
        
    }
    @objc func insertAction(){
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
