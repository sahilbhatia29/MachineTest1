//
//  BaseViewController.swift
//  MachineTest1
//
//  Created by sahil bhatia on 11/05/20.
//  Copyright © 2020 sahil bhatia. All rights reserved.
//

import UIKit
import CarbonKit

class BaseViewController: UIViewController, CarbonTabSwipeNavigationDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        let tabSwipe = CarbonTabSwipeNavigation(items: ["Overview", "Additional Info", "Contact", "Comment"], delegate: self)
          tabSwipe.setTabExtraWidth(4)
          tabSwipe.setNormalColor(UIColor.lightGray)
          tabSwipe.setSelectedColor(UIColor.black)
          tabSwipe.setIndicatorColor(UIColor.init(red: 0.0, green: 119.0, blue: 237.0, alpha: 1.0))
          tabSwipe.carbonSegmentedControl?.backgroundColor = UIColor.white
          tabSwipe.insert(intoRootViewController: self)
        // Do any additional setup after loading the view.
    }
    
    func carbonTabSwipeNavigation(_ carbonTabSwipeNavigation: CarbonTabSwipeNavigation, viewControllerAt index: UInt) -> UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if index == 0 {
            return storyboard.instantiateViewController(withIdentifier: "OverViewVC")
        }else {
            return storyboard.instantiateViewController(withIdentifier: "AdditionalInfoVC")
        }
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
