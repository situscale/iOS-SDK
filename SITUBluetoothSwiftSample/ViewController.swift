//
//  ViewController.swift
//  SITUBluetoothSwiftSample
//
//  Created by Gary on 1/25/16.
//  Copyright © 2016 SITU. All rights reserved.
//

import UIKit
import SITUBluetooth

class ViewController: UIViewController, SITUBluetoothDelegate {
    @IBOutlet weak var statusLabel : UILabel!
    @IBOutlet weak var weight : UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        scaleDisconnected()
        SITUBluetoothScaleController.sharedInstance().scanForDevice(self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func scaleConnected()
    {
        statusLabel.text = "Connected"
        statusLabel.textColor = UIColor.greenColor()
    }
    
    func scaleDisconnected()
    {
        statusLabel.text = "Disconnected"
        statusLabel.textColor = UIColor.grayColor()
        weight.text = "N/A"
    }
    
    func scaleUnsupported()
    {
        NSLog("This scale is unsupported.");
    }
    
    func scaleDidUpdateValue(value: Int32)
    {
        weight.text = "\(value) g"
    }

}

