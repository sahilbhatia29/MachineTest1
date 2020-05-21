//
//  HomeViewController.swift
//  MachineTest1
//
//  Created by sahil bhatia on 12/05/20.
//  Copyright © 2020 sahil bhatia. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageHeader: UIImageView!
    
    @IBOutlet weak var viewItems: UIView!
    @IBOutlet weak var viewTop: UIView!
    @IBOutlet weak var buttonPaidEvent: UIButton!
    
    @IBOutlet weak var buttonPromoteEvent: UIButton!
    @IBOutlet weak var buttonAddTickets: UIButton!
    @IBOutlet weak var buttonFeatured: UIButton!
    //var eventData: EventData?
    override func viewDidLoad() {
        super.viewDidLoad()
//        let viewModelObject = ViewModel()
//        viewModelObject.loadData { (data) in
//            debugPrint(data.data)
//            self.eventData = data.data
//            debugPrint(data.data.category_name)
//        }
        self.setCornerRadius()
//        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
//        self.contentView.addGestureRecognizer(tap)
        scrollView.isScrollEnabled = true
        scrollView.contentSize = CGSize(width: scrollView.contentSize.width, height: 2000)
        self.imageHeader.image = UIImage(named: "344112611i9ie40e10e91560395686.jpeg")
        guard let childVC = self.storyboard?.instantiateViewController(withIdentifier: "BaseViewController") as? BaseViewController else {
              return
            }
           addChild(childVC)
        childVC.view.frame = CGRect(x: 0, y: self.view.frame.height * 0.5, width: self.contentView.frame.width, height: self.scrollView.frame.height+1000)
          childVC.view.isUserInteractionEnabled = true
        self.scrollView.addSubview(childVC.view)
            self.addChild(childVC)
            childVC.didMove(toParent: self)

        // Do any additional setup after loading the view.
    }
    
    
//    @objc func handleTap(_ sender: UITapGestureRecognizer? = nil) {
//        debugPrint("TAP")
//    }
    func setCornerRadius() {
        self.buttonFeatured.layer.cornerRadius = 4.0
        self.buttonPaidEvent.layer.cornerRadius = 4.0
        self.viewTop.layer.cornerRadius = 6.0
        self.viewTop.layer.borderColor = UIColor.lightGray.cgColor
        self.viewTop.layer.borderWidth = 0.5
        self.buttonAddTickets.layer.cornerRadius = 6.0
        self.buttonPromoteEvent.layer.cornerRadius = 6.0
        
    }
    
    override func viewDidLayoutSubviews() {
        scrollView.contentSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height+1000)
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
