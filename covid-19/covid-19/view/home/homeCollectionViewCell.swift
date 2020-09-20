//
//  homeCollectionViewCell.swift
//  covid-19
//
//  Created by a7med abu elre9al on 5/3/20.
//  Copyright © 2020 a7med abu elre9al. All rights reserved.
//

import UIKit

class homeCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var informationLable: UILabel!
    
    
    override func awakeFromNib() {
        containerView.layer.cornerRadius = 15
        containerView.layer.masksToBounds = true
        containerView.layer.shadowColor = UIColor.darkGray.cgColor
    }
}
