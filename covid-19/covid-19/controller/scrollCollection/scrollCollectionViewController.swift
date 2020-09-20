//
//  scrollCollectionViewController.swift
//  oneMellion
//
//  Created by a7med abu elre9al on 4/4/20.
//  Copyright © 2020 a7med abu elre9al. All rights reserved.
//

import UIKit

class scrollCollectionViewController: UIViewController {
    @IBOutlet weak var scrollCollection: UICollectionView!
    @IBOutlet weak var pageControll: UIPageControl!
    @IBOutlet weak var signUpButtonOutLet: UIButton!
    
    //var images : [String] = ["netflix","netflix","netflix"]
    var images = [UIImage(named: "b9e18893903341.5e70ee31c76b9"),
                  UIImage(named: "b8e81093978513.5e7384753988c"),
                  UIImage(named: "priscilla-du-preez-zY0q8eFom8I-unsplash")]
    
    var timer = Timer()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        scrollCollection.dataSource = self
        scrollCollection.delegate = self
        
        signUpButtonOutLet.layer.cornerRadius = 20
        
        pageControll.numberOfPages = images.count
        pageControll.currentPage = 0
        DispatchQueue.main.async {
            self.timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.changeImage), userInfo: nil, repeats: true)
        }
    }
    
    
    
    @objc func changeImage() {

        if counter < images.count {
            let index = IndexPath.init(item: counter, section: 0)
            self.scrollCollection.scrollToItem(at: index, at: .centeredHorizontally, animated: true)
            pageControll.currentPage = counter
            counter += 1
        } else {
            counter = 0
            let index = IndexPath.init(item: counter, section: 0)
            self.scrollCollection.scrollToItem(at: index, at: .centeredHorizontally, animated: false)
            pageControll.currentPage = counter
            counter = 1
        }

    }
    func move(identifier:String)
    {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let nextVC = storyBoard.instantiateViewController(withIdentifier: identifier)
        self.present(nextVC,animated: true,completion: nil)
    }

    @IBAction func enterButtonAction(_ sender: Any) {
        
        move(identifier: "welcomeNavigationController")
        
    }
    
    
    

}
extension scrollCollectionViewController: UICollectionViewDelegate,UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = scrollCollection.dequeueReusableCell(withReuseIdentifier: "scrollCollectionViewCell", for: indexPath) as! scrollCollectionViewCell
        if let VC = cell.viewWithTag(111) as? UIImageView{
            VC.image = images[indexPath.row]
            cell.imageToScroll.image = images[indexPath.row]
        }else if let ab = cell.viewWithTag(222) as? UIPageControl{
            ab.currentPage = indexPath.row
        }
        return cell
    }
    
}
extension scrollCollectionViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = scrollCollection.frame.size
        return CGSize(width: size.width, height: size.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
}
