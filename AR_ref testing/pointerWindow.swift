//
//  pointerWindow.swift
//  AR_ref testing
//
//  Created by Donghan Hu on 7/29/19.
//  Copyright © 2019 Donghan Hu. All rights reserved.
//

import Cocoa

class pointerWindow: NSViewController {


    @IBOutlet weak var Button1: NSButton!
    @IBOutlet weak var Button2: NSButton!
    @IBOutlet weak var Button3: NSButton!
    @IBOutlet weak var Button4: NSButton!
    @IBOutlet weak var Button5: NSButton!
    @IBOutlet weak var Button6: NSButton!
    @IBOutlet weak var Button7: NSButton!
    @IBOutlet weak var Button8: NSButton!
    @IBOutlet weak var Button9: NSButton!
    @IBOutlet weak var Button10: NSButton!
    @IBOutlet weak var Button11: NSButton!
    @IBOutlet weak var Button12: NSButton!
    @IBOutlet weak var Button13: NSButton!
    @IBOutlet weak var Button14: NSButton!
    @IBOutlet weak var Button15: NSButton!
    @IBOutlet weak var Button16: NSButton!
    @IBOutlet weak var ButtonGotIt: NSButton!
    @IBOutlet weak var seldEvaluateSlider: NSSlider!
    @IBOutlet weak var ButtonNext: NSButton!
    
    override func viewDidAppear() {
        Button1.image = NSImage(named: NSImage.Name(rawValue: "pic1"))
        Button2.image = NSImage(named: NSImage.Name(rawValue: "pic2"))
        Button3.image = NSImage(named: NSImage.Name(rawValue: "pic3"))
        Button4.image = NSImage(named: NSImage.Name(rawValue: "pic4"))
        Button5.image = NSImage(named: NSImage.Name(rawValue: "pic5"))
        Button6.image = NSImage(named: NSImage.Name(rawValue: "pic6"))
        Button7.image = NSImage(named: NSImage.Name(rawValue: "pic7"))
        Button8.image = NSImage(named: NSImage.Name(rawValue: "pic8"))
        Button9.image = NSImage(named: NSImage.Name(rawValue: "pic9"))
        Button10.image = NSImage(named: NSImage.Name(rawValue: "pic10"))
        Button11.image = NSImage(named: NSImage.Name(rawValue: "pic11"))
        Button12.image = NSImage(named: NSImage.Name(rawValue: "pic12"))
        Button13.image = NSImage(named: NSImage.Name(rawValue: "pic13"))
        Button14.image = NSImage(named: NSImage.Name(rawValue: "pic14"))
        Button15.image = NSImage(named: NSImage.Name(rawValue: "pic15"))
        Button16.image = NSImage(named: NSImage.Name(rawValue: "pic16"))
        ButtonGotIt.image = NSImage(named: NSImage.Name(rawValue: "picGot"))
        ButtonNext.image = NSImage(named: NSImage.Name(rawValue: "buttonImage1"))
        
        Button1.isHidden = true
        Button2.isHidden = true
        Button3.isHidden = true
        Button4.isHidden = true
        Button5.isHidden = true
        Button6.isHidden = true
        Button7.isHidden = true
        Button8.isHidden = true
        Button9.isHidden = true
        Button10.isHidden = true
        Button11.isHidden = true
        Button12.isHidden = true
        Button13.isHidden = true
        Button14.isHidden = true
        Button15.isHidden = true
        Button16.isHidden = true
        
        
        seldEvaluateSlider.isHidden = true
        ButtonNext.isHidden = true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    @IBAction func ClickButton1(_ sender: Any) {
        myStaticValues.answer = "1"
        print(myStaticValues.answer)
        allButtonHide()
    }
    @IBAction func ClickButton2(_ sender: Any) {
        myStaticValues.answer = "2"
        allButtonHide()
    }
    @IBAction func ClickButton3(_ sender: Any) {
        myStaticValues.answer = "3"
        allButtonHide()
    }
    @IBAction func ClickButton4(_ sender: Any) {
        myStaticValues.answer = "4"
        allButtonHide()
    }
    @IBAction func ClickButton5(_ sender: Any) {
        myStaticValues.answer = "5"
        allButtonHide()
    }
    @IBAction func ClickButton6(_ sender: Any) {
        myStaticValues.answer = "6"
        allButtonHide()
    }
    @IBAction func ClickButton7(_ sender: Any) {
        myStaticValues.answer = "7"
        allButtonHide()
    }
    @IBAction func ClickButton8(_ sender: Any) {
        myStaticValues.answer = "8"
        allButtonHide()
    }
    @IBAction func ClickButton9(_ sender: Any) {
        myStaticValues.answer = "9"
        allButtonHide()
    }
    @IBAction func ClickButton10(_ sender: Any) {
        myStaticValues.answer = "10"
        allButtonHide()
    }
    @IBAction func ClickButton11(_ sender: Any) {
        myStaticValues.answer = "11"
        allButtonHide()
    }
    @IBAction func ClickButton12(_ sender: Any) {
        myStaticValues.answer = "12"
        allButtonHide()
    }
    @IBAction func ClickButton13(_ sender: Any) {
        myStaticValues.answer = "13"
        allButtonHide()
    }
    @IBAction func ClickButton14(_ sender: Any) {
        myStaticValues.answer = "14"
        allButtonHide()
    }
    @IBAction func ClickButton15(_ sender: Any) {
        myStaticValues.answer = "15"
        allButtonHide()
    }
    @IBAction func ClickButton16(_ sender: Any) {
        myStaticValues.answer = "16"
        allButtonHide()
    }
    
    @IBAction func ClickButtonNext(_ sender: Any) {
        let tempUrl = "file://" + myStaticValues.csvFilePath
        let csvUrl = URL(string: tempUrl)
        
        do{
            let csvContent = try NSString(contentsOfFile: myStaticValues.csvFilePath, encoding:String.Encoding.utf8.rawValue)
            let temDataOne = myStaticValues.correct + "," + myStaticValues.answer
            let temDataTwo = myStaticValues.firstTimeInterval + "," + myStaticValues.secondTimeIntercal
            let temDataThree = temDataOne + "," + temDataTwo + "," + myStaticValues.selfEvaluate
            let datawrite = (csvContent as String) + "\n" + temDataThree
            do {
                try datawrite.write(to: csvUrl!, atomically: false, encoding: .utf8)
            }
            catch {
                let nsError = error as NSError
                print(nsError.localizedDescription)
            }
        }
        catch{
            let nsError = error as NSError
            print(nsError.localizedDescription)
        }
        ButtonNext.isHidden = true
        seldEvaluateSlider.isHidden = true
        ButtonGotIt.isHidden = false
        myStaticValues.buttonStartBol = true
        //allButtonShow()
        
    }
    
    @IBAction func ClickButtonGot(_ sender: Any) {
        let time = NSDate().timeIntervalSince1970 * 1000
        myStaticValues.secondTimeIntercal = String(time)
        
        Button1.isHidden = false
        Button2.isHidden = false
        Button3.isHidden = false
        Button4.isHidden = false
        Button5.isHidden = false
        Button6.isHidden = false
        Button7.isHidden = false
        Button8.isHidden = false
        Button9.isHidden = false
        Button10.isHidden = false
        Button11.isHidden = false
        Button12.isHidden = false
        Button13.isHidden = false
        Button14.isHidden = false
        Button15.isHidden = false
        Button16.isHidden = false
        
    }
    
    func allButtonHide(){
        Button1.isHidden = true
        Button2.isHidden = true
        Button3.isHidden = true
        Button4.isHidden = true
        Button5.isHidden = true
        Button6.isHidden = true
        Button7.isHidden = true
        Button8.isHidden = true
        Button9.isHidden = true
        Button10.isHidden = true
        Button11.isHidden = true
        Button12.isHidden = true
        Button13.isHidden = true
        Button14.isHidden = true
        Button15.isHidden = true
        Button16.isHidden = true
        ButtonGotIt.isHidden = true
        ButtonNext.isHidden = false
        seldEvaluateSlider.isHidden = false

    }
    func allButtonShow(){
        Button1.isHidden = false
        Button2.isHidden = false
        Button3.isHidden = false
        Button4.isHidden = false
        Button5.isHidden = false
        Button6.isHidden = false
        Button7.isHidden = false
        Button8.isHidden = false
        Button9.isHidden = false
        Button10.isHidden = false
        Button11.isHidden = false
        Button12.isHidden = false
        Button13.isHidden = false
        Button14.isHidden = false
        Button15.isHidden = false
        Button16.isHidden = false
        ButtonGotIt.isHidden = false
        seldEvaluateSlider.isHidden = true
        ButtonNext.isHidden = true
    }
    
}
