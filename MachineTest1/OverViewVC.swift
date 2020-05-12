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
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "GeneralInfoCell", bundle: nil), forCellReuseIdentifier: "GeneralInfoCell")
        tableView.register(UINib(nibName: "EventLocationCell", bundle: nil), forCellReuseIdentifier: "EventLocationCell")
        tableView.register(UINib(nibName: "BriefDescriptionCell", bundle: nil), forCellReuseIdentifier: "BriefDescriptionCell")
        tableView.register(UINib(nibName: "EventOrganizerCell", bundle: nil), forCellReuseIdentifier: "EventOrganizerCell")

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
        return 4
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "GeneralInfoCell", for: indexPath) as! GeneralInfoCell
            //cell.backgroundColor = .lightGray
            return cell
        }else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "EventLocationCell", for: indexPath) as! EventLocationCell
            //cell.backgroundColor = .lightGray
            return cell
        }else if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "BriefDescriptionCell", for: indexPath) as! BriefDescriptionCell
            cell.labelBriefDescription.text = "A brief description about the event. It is just a static text.  A brief description about the text. A static text to check the dynamic content in the label. Static text for demo purpose. And a brief description for the event A brief description about the event. It is just a static text.  A brief description about the text. A static text to check the dynamic content in the label. Static text for demo purpose. And a brief description for the event"
            //cell.backgroundColor = .lightGray
            return cell
        }else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "EventOrganizerCell", for: indexPath) as! EventOrganizerCell
            cell.collectionView.reloadData()
            cell.viewOrganizersInfo.isHidden = true
            return cell
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 160.0
        }else if indexPath.row == 1 {
            return 210.0
        }else if indexPath.row == 2 {
            return UITableView.automaticDimension
        }else {
            return 180.0
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let indexPath = tableView.indexPathForSelectedRow
        let currentCell = tableView.cellForRow(at: indexPath!) as! EventOrganizerCell
        currentCell.viewOrganizersInfo.isHidden = false
    }
    
}

