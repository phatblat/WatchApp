//
//  InterfaceController.swift
//  WatchApp WatchKit Extension
//
//  Created by Ben Chatelain on 4/11/16.
//  Copyright © 2016 Ben Chatelain. All rights reserved.
//

import WatchKit
import Foundation

class InterfaceController: WKInterfaceController {
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
}

extension InterfaceController {
    func hello() { print("hello from watch extension") }
}
