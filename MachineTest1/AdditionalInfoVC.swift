//
//  AdditionalInfoVC.swift
//  MachineTest1
//
//  Created by sahil bhatia on 11/05/20.
//  Copyright © 2020 sahil bhatia. All rights reserved.
//

import UIKit

class AdditionalInfoVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
                let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
                self.view.addGestureRecognizer(tap)

        // Do any additional setup after loading the view.
    }
    

        @objc func handleTap(_ sender: UITapGestureRecognizer? = nil) {
            debugPrint("TAP")
        }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
