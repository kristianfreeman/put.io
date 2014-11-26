//
//  AppDelegate.swift
//  put.io
//
//  Created by Kristian Freeman on 11/25/14.
//  Copyright (c) 2014 Kristian Freeman. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let api_key = kPutIOAPIKey

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        var parentController = self.window?.rootViewController as UITabBarController
        var first = parentController.viewControllers?.first as FirstViewController
        var second = parentController.viewControllers?.last as SecondViewController

        first.setAPIKey(api_key)
        second.setAPIKey(api_key)
        
        return true
    }
    
    func application(application: UIApplication, openURL url: NSURL, sourceApplication: String?, annotation: AnyObject?) -> Bool {
        var parentController = self.window?.rootViewController as UITabBarController
        var first = parentController.viewControllers?.first as FirstViewController
        first.setURL(url)
        return true
    }
}

