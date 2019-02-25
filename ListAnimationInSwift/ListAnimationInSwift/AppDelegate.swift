//
//  AppDelegate.swift
//  ListAnimationInSwift
//
//  Created by 任俊峰 on 2019/2/23.
//  Copyright © 2019 任俊峰. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        //***********************************
        let sequnce = SequnceViewController()
        sequnce.tabBarItem.title = "顺序存储"
        //***********************************
        let OneDirection = OneDirectionViewController()
        OneDirection.tabBarItem.title="单链表"
        //***********************************
        let TwoDirection = TwoDirectionViewController()
        TwoDirection.tabBarItem.title="双向链表"
        //***********************************
        let indirectAdress = IndirectAddressViewController()
        indirectAdress.tabBarItem.title="间接寻址"
        //***********************************
        let tabBarController = UITabBarController()
        //tabBarController的主题颜色
        tabBarController.tabBar.tintColor = UIColor.init(red: 9/255.0, green: 187/255.0, blue: 7/255.0, alpha: 1)
        //tabBarController的子视图控制器集合
        tabBarController.viewControllers = [sequnce,OneDirection,TwoDirection,indirectAdress]
        tabBarController.selectedIndex = 2
        TwoDirection.tabBarItem.badgeValue="5"
        //添加到rootViewController
        window?.rootViewController = tabBarController
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

