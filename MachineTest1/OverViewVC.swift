//
//  OverViewVC.swift
//  MachineTest1
//
//  Created by sahil bhatia on 11/05/20.
//  Copyright © 2020 sahil bhatia. All rights reserved.
//

import UIKit

class OverViewVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var isViewHidden = true
    var isViewEventSponsorHidden = true
    var eventData: EventData?
    override func viewDidLoad() {
        super.viewDidLoad()
        let viewModelObject = ViewModel()
        viewModelObject.loadData { (data) in
            debugPrint(data.data)
            self.eventData = data.data
            debugPrint(data.data.category_name)
            DispatchQueue.main.async {
               self.tableView.reloadData()
            }
        }
        tableView.register(UINib(nibName: "GeneralInfoCell", bundle: nil), forCellReuseIdentifier: "GeneralInfoCell")
        tableView.register(UINib(nibName: "EventLocationCell", bundle: nil), forCellReuseIdentifier: "EventLocationCell")
        tableView.register(UINib(nibName: "BriefDescriptionCell", bundle: nil), forCellReuseIdentifier: "BriefDescriptionCell")
        tableView.register(UINib(nibName: "EventOrganizerCell", bundle: nil), forCellReuseIdentifier: "EventOrganizerCell")
        tableView.register(UINib(nibName: "EventSponsorsCell", bundle: nil), forCellReuseIdentifier: "EventSponsorsCell")

        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.estimatedRowHeight = 60.0
        self.tableView.rowHeight = UITableView.automaticDimension
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

extension OverViewVC: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "GeneralInfoCell", for: indexPath) as! GeneralInfoCell
            //cell.backgroundColor = .lightGray
            //cell.backgroundColor = .green
            return cell
        }else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "EventLocationCell", for: indexPath) as! EventLocationCell
            //cell.backgroundColor = .black
            return cell
        }else if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "BriefDescriptionCell", for: indexPath) as! BriefDescriptionCell
            cell.labelBriefDescription.text = "A brief description about the event. It is just a static text.  A brief description about the text. A static text to check the dynamic content in the label. Static text for demo purpose. And a brief description for the event A brief description about the event. It is just a static text.  A brief description about the text. A static text to check the dynamic content in the label. Static text for demo purpose. And a brief description for the event"
            cell.backgroundColor = .blue//
            return cell
        }else if indexPath.row == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "EventOrganizerCell", for: indexPath) as! EventOrganizerCell
           // cell.backgroundColor = .red
            cell.collectionView.reloadData()
            if self.isViewHidden == true {
                cell.viewOrganizersInfo.isHidden = true
            }else {
                cell.viewOrganizersInfo.isHidden = false
            }
            
            return cell
        }else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "EventSponsorsCell", for: indexPath) as! EventSponsorsCell
            cell.eventData = self.eventData
            // cell.backgroundColor = .red
             cell.collectionView.reloadData()
             if self.isViewEventSponsorHidden == true {
                 cell.viewToHide.isHidden = true
             }else {
                 cell.viewToHide.isHidden = false
             }
             
             return cell
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0:
            return 160.0
        case 1:
            return 210.0
        case 2:
            return UITableView.automaticDimension
        case 3:
            if self.isViewHidden == true {
                return 70.0
            }else {
                return 160.0
            }
        case 4:
            if self.isViewEventSponsorHidden == true {
                return 70.0
            }else {
                return 210.0
            }
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        debugPrint("Did Select")
        debugPrint(indexPath.row)
        if indexPath.row == 3 {
            if self.isViewHidden  == true {
                self.isViewHidden = false
            }else {
                self.isViewHidden = true
            }
            self.tableView.reloadData()
        }else if indexPath.row == 4 {
            if self.isViewEventSponsorHidden  == true {
                self.isViewEventSponsorHidden = false
            }else {
                self.isViewEventSponsorHidden = true
            }
        }
        self.tableView.reloadData()
    }
    
}

