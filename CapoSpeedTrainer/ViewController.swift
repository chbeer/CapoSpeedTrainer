//
//  ViewController.swift
//  CapoSpeedTrainer
//
//  Created by Christian Beer on 21.02.17.
//  Copyright © 2017 Christian Beer. All rights reserved.
//

import Cocoa
import Carbon

class ViewController: NSViewController {

    var interval: NSNumber = 1
    var repeatCount: NSNumber = 100
    
    @IBOutlet weak var intervalTextField: NSTextField!
    @IBOutlet weak var startButton: NSButton!
    @IBOutlet weak var stopButton: NSButton!
    
    var repeatIndex = 0
    var isRunning = false {
        didSet {
            startButton.isEnabled = isRunning == false
            stopButton.isEnabled = isRunning
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.window?.initialFirstResponder = intervalTextField
        view.window?.defaultButtonCell = startButton.cell as? NSButtonCell
        
        view.window?.level = Int(CGWindowLevelForKey(.maximumWindow))
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func start(_ sender: Any) {
        view.window?.makeFirstResponder(nil)
        
        repeatIndex = 0
        isRunning = true
        
        perform(#selector(timer), with: nil, afterDelay: TimeInterval(interval.floatValue))
    }

    @IBAction func stop(_ sender: Any) {
        isRunning = false
    }
    
    func timer() {
        if isRunning == false {
            return
        }
        
        callCapo()
        repeatIndex += 1
        
        if repeatIndex > repeatCount {
            isRunning = false
            return
        }
        
        perform(#selector(timer), with: nil, afterDelay: TimeInterval(interval.floatValue))
    }
    
    // Example found here: https://gist.github.com/odrobnik/e8ac59e13b62ea80b623, Thanks Oliver
    func callCapo() {
        var error: NSDictionary?
        guard let url = Bundle.main.url(forResource: "CapoMenuAccess", withExtension: "scpt") else {
            return
        }
        guard let appleScript = NSAppleScript(contentsOf: url, error: &error) else {
            return
        }
        
        let parameter = NSAppleEventDescriptor(string: "Finely Increase Playback Speed")
        let parameters = NSAppleEventDescriptor.init(listDescriptor: ())
        parameters.insert(parameter, at: 1)
        
        var psn = ProcessSerialNumber(highLongOfPSN: UInt32(0), lowLongOfPSN: UInt32(kCurrentProcess))
        
        let target = NSAppleEventDescriptor(descriptorType: typeProcessSerialNumber, bytes: &psn, length: MemoryLayout<ProcessSerialNumber>.size)
        
        let handler = NSAppleEventDescriptor(string: "call_menu")
        let event = NSAppleEventDescriptor(eventClass: AEEventClass(kASAppleScriptSuite), eventID: AEEventID(kASSubroutineEvent), targetDescriptor: target, returnID: AEReturnID(kAutoGenerateReturnID), transactionID: AETransactionID(kAnyTransactionID))
        event.setParam(handler, forKeyword: AEKeyword(keyASSubroutineName))
        event.setParam(parameters, forKeyword: AEKeyword(keyDirectObject))
        
        let output = appleScript.executeAppleEvent(event, error: &error)
        print("output: \(output.stringValue)")
    }
}

extension NSNumber {
    static func > (left: NSNumber, right: NSNumber) -> Bool {
        return left.intValue > right.intValue
    }
    static func > (left: Int, right: NSNumber) -> Bool {
        return left > right.intValue
    }
}
