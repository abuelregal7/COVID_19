//
//  homeViewController.swift
//  covid-19
//
//  Created by a7med abu elre9al on 5/3/20.
//  Copyright © 2020 a7med abu elre9al. All rights reserved.
//

import UIKit

class homeViewController: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    
    @IBOutlet weak var homeCollectionViewOutLet: UICollectionView!
    
    var information = ["أحدث الأرقام 🔢","كيف تحمي نفسك 👍","إجابات عن أسئلتكم❓","تصحيح مفاهيم مغلوطة 🛑","نصائح بشأن السفر 🗺️","أخبار وبيانات صحفية 📰","تبرع الآن 😍"]
    
    
    /*
     
     var selected : Int!
     
     if let url = NSURL(string: self.androidVideoLink[indexPath.row]){
     UIApplication.shared.openURL(url as URL)
     }
     
     */
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        homeCollectionViewOutLet.delegate = self
        homeCollectionViewOutLet.dataSource = self
    }
    func move(identifier:String)
    {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let nextVC = storyBoard.instantiateViewController(withIdentifier: identifier)
        self.present(nextVC,animated: true,completion: nil)
    }
    
    @IBAction func backButtonAction(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return information.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = homeCollectionViewOutLet.dequeueReusableCell(withReuseIdentifier: "homeCollectionViewCell", for: indexPath) as! homeCollectionViewCell
        cell.informationLable.text = "\(information[indexPath.row])"
        cell.layer.cornerRadius = 15
        cell.layer.masksToBounds = true
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if indexPath.row == 0{
            
            move(identifier: "subHomeNavigationController")
            
        }else if indexPath.row == 1 {
            
            move(identifier: "saveYourSelfNavigationController")
            
        }else if indexPath.row == 2 {
            
            move(identifier: "questionsNavigationController")
            
        }else if indexPath.row == 3 {
            
            move(identifier: "missUnderStandNavigationController")
            
            
        }else if indexPath.row == 4 {
            
            move(identifier: "travellerNavigationController")
            
        }else if indexPath.row == 5 {
            
            move(identifier: "newsCollectionNavigationController")
            
            
        }else{
            
            move(identifier: "donateNavigationController")
            
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (view.frame.width - 60) / 2.0
        return CGSize(width: width, height: width)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    

    

}
