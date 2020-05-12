//
//  EventOrganizerCell.swift
//  MachineTest1
//
//  Created by sahil bhatia on 12/05/20.
//  Copyright © 2020 sahil bhatia. All rights reserved.
//

import UIKit

class EventOrganizerCell: UITableViewCell, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var containerView: UIView!
    
    @IBOutlet weak var viewTitle: UIView!
    
    @IBOutlet weak var viewOrganizersInfo: UIView!
    
    @IBOutlet weak var collectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.containerView.layer.cornerRadius = 6.0
        
        self.collectionView.register(UINib(nibName: "EventOrganizerCollectionCell", bundle: nil), forCellWithReuseIdentifier: "EventOrganizerCollectionCell")
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        8
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : EventOrganizerCollectionCell = collectionView.dequeueReusableCell(withReuseIdentifier: "EventOrganizerCollectionCell", for: indexPath) as! EventOrganizerCollectionCell
        cell.viewImageContainer.layer.cornerRadius = 40.0
        cell.imageOrganizer.layer.cornerRadius = 40.0
        cell.viewImageContainer.layer.borderColor = UIColor.gray.cgColor
        cell.viewImageContainer.layer.borderWidth = 1.0
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100.0, height: 200.0)
    }
}
