//
//  SettingsViewController.swift
//  tippery
//
//  Created by Hein Soe on 9/14/18.
//  Copyright © 2018 Hein Soe. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var defaultSegment: UISegmentedControl!
    
    var index:Int?
    let dfault = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        index = dfault.integer(forKey: "percentage") ?? 0
        print(index!)
        defaultSegment.selectedSegmentIndex = index!
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        //Checking the Back Button is clicked
        if self.isMovingFromParentViewController {
            let navVC = self.navigationController
            let destinVC = navVC?.viewControllers.first as! ViewController
//            print(destinVC)
            destinVC.presetPercent.selectedSegmentIndex = defaultSegment.selectedSegmentIndex
            destinVC.billLabel.becomeFirstResponder()
            setSetting()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setSetting () {
        dfault.set(defaultSegment.selectedSegmentIndex, forKey: "percentage")
        dfault.synchronize()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
