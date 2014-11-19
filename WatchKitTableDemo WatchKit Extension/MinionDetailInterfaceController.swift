//
//  MinionDetailInterfaceController.swift
//  WatchKitTableDemo
//
//  Created by Natasha Murashev on 11/19/14.
//  Copyright (c) 2014 NatashaTheRobot. All rights reserved.
//

import WatchKit

class MinionDetailInterfaceController: WKInterfaceController {
    
    @IBOutlet weak var interfaceLabel: WKInterfaceLabel!
    
    @IBOutlet weak var interfaceImage: WKInterfaceImage!
    
    override init(context: AnyObject?) {
        super.init(context: context)
        
        if let minionName = context as? String {
            interfaceLabel.setText(minionName)
            interfaceImage.setImage(UIImage(named: minionName))
        }
    }
}
