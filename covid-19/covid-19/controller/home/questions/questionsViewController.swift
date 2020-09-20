//
//  questionsViewController.swift
//  covid-19
//
//  Created by a7med abu elre9al on 5/4/20.
//  Copyright © 2020 a7med abu elre9al. All rights reserved.
//

import UIKit

class questionsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var questionsTableViewOutLet: UITableView!
    
    let imagesOfCorona = [UIImage(named: "1"),
                          UIImage(named: "2"),
                          UIImage(named: "3"),
                          UIImage(named: "4"),
                          UIImage(named: "5"),
                          UIImage(named: "6"),
                          UIImage(named: "7"),
                          UIImage(named: "8"),
                          UIImage(named: "9"),
                          UIImage(named: "10"),
                          UIImage(named: "11"),
                          UIImage(named: "5")]
    
    let numOfQuestions = ["question : 1", "question : 2", "question : 3","question : 4", "question : 5", "question : 6","question : 7", "question : 8", "question : 9","question : 10", "question : 11", "question : 12"]
    
    let questions = ["ما هي فيروسات كورونا؟ وما هو مرض كوفيد-19؟ وما هي علاقته بمرض سارس؟", "ما هي أعراض مرض كوفيد-19؟", "كيف ينتشر مرض كوفيد-19؟","هل يمكن أن أصاب بمرض كوفيد-19 عن طريق البراز أو الحيوانات؟", "هل من الممكن أن أصاب بمرض كوفيد-19 عن طريق الأسطح الملوثة أو الطرود المرسلة من المناطق التي أبلغت عن حالات إصابة؟", "كيف يمكنني حماية نفسي ومنع انتشار المرض؟"," ما الذي علي فعله إن كنت قد قمت بزيارة منطقة موبوءة؟", "هل توجد أي أدوية أو لقاحات أو علاجات يمكنها الوقاية من مرض كوفيد-19 أو علاجه؟", "هل ينبغي أن أضع كمامة لحماية نفسي؟","هل هناك أمور ينبغي أن أتجنبها؟", "كيف أتغلب على الشعور بالقلق الناجم عن انتشار كوفيد-19؟","كيف أساعد الأطفال على التغلب على الشعور بالقلق الناجم عن انتشار كوفيد-19؟"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        questionsTableViewOutLet.delegate = self
        questionsTableViewOutLet.dataSource = self
    }
    
    @IBAction func backButtonAction(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    func move(identifier:String)
    {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let nextVC = storyBoard.instantiateViewController(withIdentifier: identifier)
        self.present(nextVC,animated: true,completion: nil)
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numOfQuestions.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = questionsTableViewOutLet.dequeueReusableCell(withIdentifier: "questionsTableViewCell") as! questionsTableViewCell
        
        cell.imageOfCovid.image = imagesOfCorona[indexPath.row]
        cell.numberOfQuestions.text = numOfQuestions[indexPath.row]
        cell.questions.text = questions[indexPath.row]
        
        ////////////////
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
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 427
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0{
            
            move(identifier: "answersNavigationController")
            
        }else if indexPath.row == 1 {
            
            move(identifier: "secondNavigationController")
            
        }else if indexPath.row == 2 {
            
            move(identifier: "thirdNavigationController")
            
        }else if indexPath.row == 3 {
            
            move(identifier: "fourthNavigationController")
            
        }else if indexPath.row == 4 {
            
            move(identifier: "fifthNavigationController")
            
        }else if indexPath.row == 5 {
            
            move(identifier: "sixthNavigationController")
            
        }else if indexPath.row == 6 {
            
            move(identifier: "seventhNavigationController")
            
        }else if indexPath.row == 7 {
            
            move(identifier: "eighthNavigationController")
            
        }else if indexPath.row == 8 {
            
            move(identifier: "ninthNavigationController")
            
        }else if indexPath.row == 9 {
            
            move(identifier: "tenthNavigationController")
            
        }else if indexPath.row == 10 {
            
            move(identifier: "elevenNavigationController")
            
        }else{
            
            move(identifier: "twelveNavigationController")
            
        }
    }

    

}
