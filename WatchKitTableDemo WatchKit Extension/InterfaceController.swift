//
//  InterfaceController.swift
//  WatchKitTableDemo WatchKit Extension
//
//  Created by Natasha Murashev on 11/18/14.
//  Copyright (c) 2014 NatashaTheRobot. All rights reserved.
//

import WatchKit

class InterfaceController: WKInterfaceController {

    @IBOutlet weak var minionTable: WKInterfaceTable!
    
    let minions = ["Bob", "Dave", "Jerry", "Jorge", "Kevin",
        "Mark", "Phil", "Stuart", "Tim"]
    

    override init(context: AnyObject?) {
        super.init(context: context)
        
        
        loadTableData()
    }
    
    private func loadTableData() {
        
        minionTable.setNumberOfRows(minions.count, withRowType: "MinionTableRowController")
        
        for (index, minionName) in enumerate(minions) {
            
            let row = minionTable.rowControllerAtIndex(index) as MinionTableRowController
            
            row.interfaceLabel.setText(minionName)
            
            row.interfaceImage.setImage(UIImage(named: minionName))
        }
        
    }
    
    override func contextForSegueWithIdentifier(segueIdentifier: String, inTable table: WKInterfaceTable, rowIndex: Int) -> AnyObject?
    {
        
        let minionName = minions[rowIndex]
        return minionName
    }
    

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        NSLog("%@ will activate", self)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        NSLog("%@ did deactivate", self)
        super.didDeactivate()
    }

}
