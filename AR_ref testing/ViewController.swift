//
//  ViewController.swift
//  AR_ref testing
//
//  Created by Donghan Hu on 7/29/19.
//  Copyright © 2019 Donghan Hu. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    @IBOutlet weak var buttonStart: NSButton!
    @IBOutlet weak var numberDisplay: NSTextField!
    
    
    var number = 0
    var count = 0
    let arrayOfNumber = [1, 6, 11, 16, 0000, 3, 10, 6, 8, 12, 13, 1, 9, 15, 2, 11, 7, 4, 16, 14, 5, 8, 11, 5, 4, 16, 6, 15, 2, 1, 7, 12, 13, 3, 14, 10, 9, 5, 1, 15, 8, 16, 14, 3, 9, 7, 6, 11, 12, 4, 10, 2, 13, 0000, 7, 10, 13, 5, 8, 2, 9, 12, 16, 1, 3, 4, 11, 14, 15, 6, 16, 9, 13, 1, 15, 2, 7, 4, 11, 5, 10, 8, 3, 14, 6, 12, 4, 8, 11, 9, 16, 12, 3, 1, 6, 15, 2, 10, 5, 14, 7, 13, 0000
]
    
    
    var timer: Timer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonStart.image = NSImage(named: NSImage.Name(rawValue: "picStart"))
        // Do any additional setup after loading the view.
        
        
    }
    @IBAction func clickStartButton(_ sender: Any) {
        let displayNumber = count % 103
        let number = arrayOfNumber[displayNumber]
        numberDisplay.stringValue = String(number)
        count = count + 1
        myStaticValues.correct = String(number)
        let time = NSDate().timeIntervalSince1970 * 1000
        myStaticValues.firstTimeInterval = String(time)
        //buttonStart.isHidden = true
        buttonStart.isEnabled = false
        myStaticValues.buttonStartBol = false
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(buttonDisable), userInfo: nil, repeats: true)

        
        
    }
    
    @objc func buttonDisable(){
        buttonStart.isEnabled = myStaticValues.buttonStartBol
    }
    
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

