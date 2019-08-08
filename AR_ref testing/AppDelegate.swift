//
//  AppDelegate.swift
//  AR_ref testing
//
//  Created by Donghan Hu on 7/29/19.
//  Copyright © 2019 Donghan Hu. All rights reserved.
//

import Cocoa

struct myStaticValues {
    static var yourVariable = false
    static var csvFilePath = "/Users/donghanhu/Desktop/Triple_C/study.csv"
    static var firstTimeInterval = "0"
    static var secondTimeIntercal = "0"
    static var minus = 0
    static var correct = "100"
    static var answer = "999"
    static var selfEvaluate = "10"
    static var startButton = true
    
    static var buttonStartBol = false
    

}

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    open var windowController: NSWindowController?
    var subWindowController: NSWindowController?


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        let Window_Handler : NSViewController = pointerWindow()
        let subWindow = NSWindow(contentViewController:  Window_Handler)
        subWindowController = NSWindowController(window: subWindow)
        subWindowController?.showWindow(nil)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

