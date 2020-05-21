//
//  EventSponsorsCell.swift
//  MachineTest1
//
//  Created by sahil bhatia on 15/05/20.
//  Copyright © 2020 sahil bhatia. All rights reserved.
//

import UIKit

class EventSponsorsCell: UITableViewCell, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var containerView: UIView!
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var viewToHide: UIView!
    @IBOutlet weak var viewEventSponsor: UIView!
    var eventData: EventData?
    override func awakeFromNib() {
        super.awakeFromNib()
        self.containerView.layer.cornerRadius = 6.0
        
        self.collectionView.register(UINib(nibName: "EventSponsorCollectionCell", bundle: nil), forCellWithReuseIdentifier: "EventSponsorCollectionCell")
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        self.eventData?.event_organizer.count ?? 0
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : EventSponsorCollectionCell = collectionView.dequeueReusableCell(withReuseIdentifier: "EventSponsorCollectionCell", for: indexPath) as! EventSponsorCollectionCell
        cell.labelSponsorName.text = self.eventData?.event_organizer[indexPath.row].o_name
        cell.viewImageContainer.layer.cornerRadius = 4.0
        
        cell.imageSponsor.layer.cornerRadius = 35.0
        cell.viewImageContainer.layer.borderColor = UIColor.gray.cgColor
        cell.viewImageContainer.layer.borderWidth = 1.0
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 120.0, height: 140)
    }
    
}
