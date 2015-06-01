//
//  AppDelegate.swift
//  webapp
//
//  Created by Shan, Jinyi on 25/05/2015.
//  Copyright (c) 2015 Shan, Jinyi. All rights reserved.
//

import UIKit

@UIApplicationMain class AppDelegate: UIResponder ,UIApplicationDelegate{
    
    var window: UIWindow?
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
    
        return true
        
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
    
    
    func application(application: UIApplication, handleOpenURL url: NSURL) -> Bool {
        // when the app is launched in a website
        //  NSLog("This is the URL: %@",url)
        
        let realURL = url.absoluteString!.stringByReplacingOccurrencesOfString("myfittingroom://", withString: "http://")
        
        println("real URL is : \(realURL)")
        
        if let myURL = NSURL(string: realURL) {
            var error: NSError?
            let myHTMLString = NSString(contentsOfURL: myURL, encoding: NSUTF8StringEncoding, error: &error)
            
            if let error = error {
                println("Error : \(error)")
            } else {
               // println("HTML : \(myHTMLString)")
                println("success")
           //     println("HTML:\(myHTMLString as! String)")
                /*
                
                let html = "<html><head></head><body><ul><li><input type='image' name='input1' value='string1value' class='abc' /></li><li><input type='image' name='input2' value='string2value' class='def' /></li></ul><span class='spantext'><b>Hello World 1</b></span><span class='spantext'><b>Hello World 2</b></span><a href='example.com'>example(English)</a><a href='example.co.jp'>example(JP)</a></body>"*/
                
                var err : NSError?
                var parser     = HTMLParser(html: (myHTMLString as! String), error: &err)
                if err != nil {
                    println(err)
                    exit(1)
                }
                
                var bodyNode   = parser.body
           /*
                if let inputNodes = bodyNode?.findChildTags("div") {
                    for node in inputNodes {
                        println(node.contents)
                    }
                }
          */
                if let inputNodes = bodyNode?.findChildTags("div") {
                    for node in inputNodes {
                  /*      println(node.contents)
                        println(node.getAttributeNamed("class"))
    */
                        if node.getAttributeNamed("class") == "productImage" {
                            println("found!!!!!!!!")
                            println(node.contents)

                        }
                    }
                }

            }
        } else {
            println("Error: \(realURL) doesn't seem to be a valid URL")
        }
        
        
        //  println(realURL)
        return true
        
    }
    
}