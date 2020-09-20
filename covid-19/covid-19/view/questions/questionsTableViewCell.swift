//
//  questionsTableViewCell.swift
//  covid-19
//
//  Created by a7med abu elre9al on 5/4/20.
//  Copyright © 2020 a7med abu elre9al. All rights reserved.
//

import UIKit

class questionsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var imageOfCovid: UIImageView!
    @IBOutlet weak var numberOfQuestions: UILabel!
    @IBOutlet weak var questions: UILabel!
    
    /*
     
     cell.contentView.layer.cornerRadius = 4.0
     cell.contentView.layer.borderWidth = 2.0
     cell.contentView.layer.borderColor = UIColor.clear.cgColor
     cell.contentView.layer.masksToBounds = false
     cell.layer.shadowColor = UIColor.gray.cgColor
     cell.layer.shadowOffset = CGSize(width: 0, height: 1.0)
     cell.layer.shadowRadius = 4.0
     cell.layer.shadowOpacity = 1.0
     cell.layer.masksToBounds = false
     cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: cell.contentView.layer.cornerRadius).cgPath
     
     */
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        containerView.layer.cornerRadius = 15
        containerView.layer.masksToBounds = true
        containerView.layer.shadowColor = UIColor.darkGray.cgColor
        containerView.layer.shadowOffset = CGSize(width: 0, height: 1.0)
        containerView.layer.shadowRadius = 4.0
        containerView.layer.shadowOpacity = 1.0
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
