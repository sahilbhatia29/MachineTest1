//
//  DemoVc.swift
//  MachineTest1
//
//  Created by sahil bhatia on 14/05/20.
//  Copyright © 2020 sahil bhatia. All rights reserved.
//

import UIKit

class DemoVc: UIViewController {

    @IBOutlet weak var viewItems: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        

//        guard let childVC = self.storyboard?.instantiateViewController(withIdentifier: "BaseViewController") as? BaseViewController else {
//            return
//          }
//         addChild(childVC)
//        childVC.view.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
//        childVC.view.isUserInteractionEnabled = true
//        self.view.addSubview(childVC.view)
//          self.addChild(childVC)
//          childVC.didMove(toParent: self)
        // Do any additional setup after loading the view.
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
