//
//  newsCollectionViewController.swift
//  covid-19
//
//  Created by a7med abu elre9al on 5/4/20.
//  Copyright © 2020 a7med abu elre9al. All rights reserved.
//

import UIKit

class newsCollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var newsCollectionViewOutLet: UICollectionView!
    
    let newsText = ["تقارير الحالة الدولية: تقدم تقارير الحالة آخر التحديثات عن اندلاع فيروس كوفيد-19 دولياً","تحديثات متجددة: تحديثات متجددة عن مرض فيروس كورونا (كوفيد-19) عبر وسائط منظمة الصحة العالمية.","المقالات الإخبارية: جميع النشرات الإخبارية والبيانات والملاحظات لوسائل الإعلام.","إحاطات إعلامية: إحاطات إعلامية عن مرض فيروس كورونا (كوفيد-19) بما في ذلك مقاطع الفيديو والصوت والنصوص."]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        newsCollectionViewOutLet.delegate = self
        newsCollectionViewOutLet.dataSource = self
        
        // Do any additional setup after loading the view.
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
        return newsText.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = newsCollectionViewOutLet.dequeueReusableCell(withReuseIdentifier: "newsCollectionViewCell", for: indexPath) as! newsCollectionViewCell
        
        cell.newsInformationLabl.text = "\(newsText[indexPath.row])"
        cell.layer.cornerRadius = 15
        cell.layer.masksToBounds = true
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == 0{
            
            move(identifier: "firstnewsNavigationController")
            
        }else if indexPath.row == 1 {
            
            move(identifier: "secondnewsNavigationController")
            
        }else if indexPath.row == 2 {
            
            move(identifier: "thirednewsNavigationController")
            
        }else{
            
            move(identifier: "fourthnewsNavigationController")
            
        }
    }
    

    

}
