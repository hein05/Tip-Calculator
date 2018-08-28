//
//  ViewController.swift
//  tippery
//
//  Created by Hein Soe on 8/27/18.
//  Copyright © 2018 Hein Soe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   @IBOutlet weak var billLabel: UITextField!
   @IBOutlet weak var tipAmt: UILabel!
   @IBOutlet weak var totalAmt: UILabel!
   @IBOutlet weak var presetPercent: UISegmentedControl!
   
   @IBAction func calTip(_ sender: Any) {
      let tipPercent = [0.1, 0.15, 0.2]
      let billAmt = Double(billLabel.text!) ?? 0
      
      let tip = billAmt * tipPercent[presetPercent.selectedSegmentIndex]
      let total = billAmt + tip
      tipAmt.text = String(format: "$ %.2f", tip)
      totalAmt.text = String(format: "$ %.2f", total)
   }
   
   @IBAction func onTap(_ sender: Any) {
      view.endEditing(true)
   }
   override func viewDidLoad() {
      super.viewDidLoad()
      // Do any additional setup after loading the view, typically from a nib.
   }

   override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
   }


}

