//
//  welcomeViewController.swift
//  covid-19
//
//  Created by a7med abu elre9al on 5/3/20.
//  Copyright © 2020 a7med abu elre9al. All rights reserved.
//

import UIKit

class welcomeViewController: UIViewController {

    
    @IBOutlet weak var roundedCorner: UIView!
    @IBOutlet weak var aboutCorona: UIButton!
    @IBOutlet weak var introLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        aboutCorona.layer.cornerRadius = 15
        aboutCorona.layer.masksToBounds = true
        roundedCorner.layer.shadowColor = UIColor.darkGray.cgColor
        introLable.layer.borderColor = UIColor.black.cgColor
        introLable.layer.borderWidth = 1
        introLable.layer.shadowColor = UIColor.darkGray.cgColor
        introLable.layer.shadowOpacity = 1.5
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        //self.containerView.round(corners: [.bottomRight], radius: 450)
        //self.roundedCorner.round(corners: [.topRight, .topLeft], radius: 40)
        //self.roundedCorner.round(corners: [.topRight, .topLeft], radius: 187.5)
        //self.roundedCorner.round(corners: [.topRight, .topLeft], radius: 187.5)
        self.roundedCorner.round(corners: [.topRight], radius: 150)
        //self.roundedCorner.round(corners: [.topRight, .bottomLeft], radius: 200)
        //self.roundedCorner.round(corners: [.topLeft, .bottomRight], radius: 200)
        
        roundedCorner.layer.shadowColor = UIColor.darkGray.cgColor
        
        
        
        
    }
    
    func move(identifier:String)
    {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let nextVC = storyBoard.instantiateViewController(withIdentifier: identifier)
        self.present(nextVC,animated: true,completion: nil)
    }
    
    @IBAction func aboutCoronaButtonAction(_ sender: Any) {
        
        move(identifier: "homeNavigationController")
        
    }
    
    @IBAction func backButtonAction(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    

}

extension UIView {
    
    func round(corners: UIRectCorner, radius: CGFloat) -> CAShapeLayer {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
        self.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMaxYCorner]
        self.layer.masksToBounds = true
        return mask
    }
    
}
