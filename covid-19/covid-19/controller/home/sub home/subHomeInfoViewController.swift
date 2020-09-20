//
//  subHomeInfoViewController.swift
//  covid-19
//
//  Created by a7med abu elre9al on 5/3/20.
//  Copyright © 2020 a7med abu elre9al. All rights reserved.
//

import UIKit

class subHomeInfoViewController: UIViewController,UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var subHomeCollectionViewOutLet: UICollectionView!
    
    var subInformation = ["توفر هذه الخريطة التفاعلية أداة متابعة لأحدث عدد حالات الإصابة بمرض كوفيد-19 على مستوى العالم وفي كل بلد بصفة يومية (لاحظ توقيت التحديث)","وتوفر هذه الخريطة التفاعلية أداة متابعة أخرى لأحدث عدد حالات الإصابة بمرض كوفيد-19 على مستوى إقليم شرق المتوسط بصفة يومية (لاحظ توقيت التحديث)","للاطلاع على أحدث تقارير حالة باللغة الإنجليزية عن الوضع العالمي"]
    
    var firstLink = "https://covid19.who.int/"
    
    var secondLink = "https://app.powerbi.com/view?r=eyJrIjoiN2ExNWI3ZGQtZDk3My00YzE2LWFjYmQtNGMwZjk0OWQ1MjFhIiwidCI6ImY2MTBjMGI3LWJkMjQtNGIzOS04MTBiLTNkYzI4MGFmYjU5MCIsImMiOjh9"
    
    var thirdLink = "https://www.who.int/emergencies/diseases/novel-coronavirus-2019/situation-reports/"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        subHomeCollectionViewOutLet.delegate = self
        subHomeCollectionViewOutLet.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func backButtonAction(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return subInformation.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = subHomeCollectionViewOutLet.dequeueReusableCell(withReuseIdentifier: "subHomeCollectionViewCell", for: indexPath) as! subHomeCollectionViewCell
        
        cell.subInformationLabl.text = "\(subInformation[indexPath.row])"
        cell.layer.cornerRadius = 15
        cell.layer.masksToBounds = true
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == 0{
            
            if let url = NSURL(string: self.firstLink){
                UIApplication.shared.openURL(url as URL)
            }
            
        }else if indexPath.row == 1 {
            
            if let url = NSURL(string: self.secondLink){
                UIApplication.shared.openURL(url as URL)
            }
            
        }else{
            
            if let url = NSURL(string: self.thirdLink){
                UIApplication.shared.openURL(url as URL)
            }
            
        }
    }

    

}
