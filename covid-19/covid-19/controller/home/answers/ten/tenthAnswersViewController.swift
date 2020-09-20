//
//  tenthAnswersViewController.swift
//  covid-19
//
//  Created by a7med abu elre9al on 5/4/20.
//  Copyright © 2020 a7med abu elre9al. All rights reserved.
//

import UIKit

class tenthAnswersViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    let answer10 = "لتدابيرالتالية ليست فعالة ضد كوفيد-19 ويمكن أن تكون ضارة:\n\n 🚭التدخين\n 😷 ارتداء أقنعة متعددة\n 💊 تناول المضادات الحيوية\n\n وإذا كنت تعاني من الحمى والسعال وصعوبة التنفس، التمس المشورة الطبية على الفور، فقد تكون مصاباً بعدوى الجهاز التنفسي أو حالة مرضية وخيمة أخرى. واتصل قبل الذهاب إلى مقدم الرعاية وأخبره إن كنت قد سافرت أو خالطت أي مسافرين مؤخراً.\n"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        textView.text = answer10
    }
    @IBAction func backButtonAction(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
    

    

}
