//
//  AppDelegate.swift
//  CustomerCare
//
//  Created by quoclki on 7/23/16.
//  Copyright © 2016 quoclki. All rights reserved.
//

import UIKit
import BasicApp_Base

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.

        let frameScreen = UIScreen.mainScreen().bounds
        window = UIWindow(frame: frameScreen)
        window?.rootViewController = LoginVCtrl()
        window?.makeKeyAndVisible()

        ModuleConfig()
        Base.ratioWidth = frameScreen.width / 414
        Base.ratioHeight = frameScreen.height / 736
        Base.frameScreen = frameScreen
        Base.sizeScreen = frameScreen.size
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "rotated", name: UIDeviceOrientationDidChangeNotification, object: nil)
        
        return true
        
    }

    func rotated()
    {
//        if(UIDeviceOrientationIsLandscape(UIDevice.currentDevice().orientation))
//        {
//            print("landscape")
//        }
//        
//        if(UIDeviceOrientationIsPortrait(UIDevice.currentDevice().orientation))
//        {
//            print("Portrait")
//        }
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

