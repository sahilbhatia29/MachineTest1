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
        8
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : EventSponsorCollectionCell = collectionView.dequeueReusableCell(withReuseIdentifier: "EventSponsorCollectionCell", for: indexPath) as! EventSponsorCollectionCell
        cell.viewImageContainer.layer.cornerRadius = 4.0
        
        cell.imageSponsor.layer.cornerRadius = 25.0
        cell.viewImageContainer.layer.borderColor = UIColor.gray.cgColor
        cell.viewImageContainer.layer.borderWidth = 1.0
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 80.0, height: 100)
    }
    
}
