//
//  settingsViewController.swift
//  TipCalculator
//
//  Created by Shivva Subramani on 3/13/17.
//  Copyright © 2017 Shivva Subramani. All rights reserved.
//

import UIKit

class settingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("view did disappear")
    }
    func saveAKey(){
        let defaults = UserDefaults.standard
        defaults.set("100", forKey: "Your Bill Amount")
        defaults.synchronize()
    }
    func loadAKey(){
        let defaults = UserDefaults.standard
        defaults.set("100", forKey: "Your Bill Amount")
        defaults.synchronize()
    }

}
