//
//  IncreaseBalanceInterfaceController.swift
//  PiggyBank
//
//  Created by Daniel Lam on 19/04/2015.
//  Copyright (c) 2015 Hungry Source Pty Ltd. All rights reserved.
//

import WatchKit
import Foundation
import PiggyBankCommon

class IncreaseBalanceInterfaceController: WKInterfaceController {

    private var balanceModel: BalanceModel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)

        // Configure interface objects here.
        balanceModel = BalanceModel.sharedInstance
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func savedThreeDollars() {
        balanceModel.addMoney(3)
        dismissController()
    }

    @IBAction func savedTenDollars() {
        balanceModel.addMoney(10)
        dismissController()
    }
}

